package uk.ac.shu.ebusiness.rammdesigns

import org.springframework.dao.DataIntegrityViolationException

class UserController {


def beforeInterceptor = [action:this.&auth, 
                           except:["login", "signup", "logout"]]

  def auth() {
    if( !(session?.user?.role == "Admin") ){
      flash.message = "You must be an administrator to perform that task."
      redirect(action:"login")
      return false
    }
  }



    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create() {
        [userInstance: new User(params)]
    }

    def save() {
        def userInstance = new User(params)
        if (!userInstance.save(flush: true)) {
            render(view: "create", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def show(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def edit(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        [userInstance: userInstance]
    }

    def update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "show", id: userInstance.id)
    }

    def delete(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
            return
        }

        try {
            userInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "show", id: id)
        }
    }





 // Registration //

def signup() {
if(request.method == 'POST') {
  def u = new User()
  u.properties['username', 'password', 'firstName', 'lastName'] = params
  if(u.password == params.username) {
    u.errors.rejectValue("password", "user.password.same.as.username")
    return [user:u]
}
  if(u.password != params.confirm) {
    u.errors.rejectValue("password", "user.password.dontmatch")
    return [user:u]
    } else if(u.save()) {
      session.user = u
      redirect controller:"home"
    } else {
      return [user:u]
    }
  }
}



// Login //

def login(LoginCommand cmd) {
  if(request.method == 'POST') {
    if(!cmd.hasErrors()) {
      session.user = cmd.getUser()
      redirect controller:'home'
    } else {
      render view:'/user/login', model:[loginCmd:cmd]
    }
  } else {
    render view:'/user/login'
  }
}


    class LoginCommand {
      String username 
      String password
      private u
      User getUser() {
              if(!u && username) {
                 u = User.findByUsername(username)
              }
              return u

      }

  static constraints = {
                username blank:false, validator:{ val, obj ->
                    if(!obj.user)
                      return "user.not.found"
                }
                password blank:false, validator:{ val, obj ->
                    if(obj.user && obj.user.password != val)
                      return "user.password.invalid"
                }
  }
}


  def logout = {
        session.invalidate()
        redirect(controller:'home')
    }







}
