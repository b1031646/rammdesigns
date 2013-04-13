package uk.ac.shu.ebusiness.rammdesigns

import org.springframework.dao.DataIntegrityViolationException

class UserController {


	// Before Interceptor that restricts access to Admin users only //

def beforeInterceptor = [action:this.&auth, 
                           except:["login", "login_product", "signup", "logout", "my_account", "edit_details", "user_update"]]

  def auth() {
    if( !(session?.user?.role == "Admin") ){
      flash.message = "You must be an administrator to perform that task."
      redirect(action:"login")
      return false
    }
  }


	// Code for scaffolded interfaces //

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



	// USER CONTROLLER WORK //


	// Page Links //
	
	def admin_area(){}

	def my_account(){}



 	// Registration //

	def signup() {
	if(request.method == 'POST') {
	def u = new User()
	u.properties['username', 'password', 'firstName', 'lastName', 'confirm'] = params
	if(u.save()) {
	session.user = u
	redirect controller:"home"
	} else {
	return [user:u]
	}
	}
	}



	// Login //



	// Code to login from product page and get redirected to the product instead of the home screen //

	def login_product(LoginCommand cmd) {

	def returnpage = (params.product.id)

	if(request.method == 'POST') {
	if(!cmd.hasErrors()) {
	session.user = cmd.getUser()
	redirect(controller:"product", action: "detail", id: returnpage)
	} else {
	  render(view:"/product/detail", model:[login_productCmd:cmd, productInstance: Product.get(returnpage as Long)])
	}
	} else {
	redirect(controller:"product", action: "detail", id: returnpage)
	}
	}





 	// Main login code that redirects to home page //

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



	// Part of the login script that checks if both username and password exist and then retrieves the user //

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


	// Logout //

	def logout = {
	session.invalidate()
	redirect(controller:'home')
	}



	// USER EDIT PERSONAL DETAILS //

	def edit_details(Long id) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "edit_details")
            return
        }

        [userInstance: userInstance]
    }

    def user_update(Long id, Long version) {
        def userInstance = User.get(id)
        if (!userInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), id])
            redirect(action: "edit_details")
            return
        }

        if (version != null) {
            if (userInstance.version > version) {
                userInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'user.label', default: 'User')] as Object[],
                          "Another user has updated this User while you were editing")
                render(view: "edit_details", model: [userInstance: userInstance])
                return
            }
        }

        userInstance.properties = params

        if (!userInstance.save(flush: true)) {
            render(view: "edit_details", model: [userInstance: userInstance])
            return
        }

        flash.message = message(code: 'personal.details.updated', args: [message(code: 'user.label', default: 'User'), userInstance.id])
        redirect(action: "my_account", id: userInstance.id)
    }



}
