package uk.ac.shu.ebusiness.rammdesigns

import org.springframework.dao.DataIntegrityViolationException

class FAQController {

	// Before Interceptor that restricts access to Admin users only //


def beforeInterceptor = [action:this.&auth, 
                           except:["all"]]

  def auth() {
    if( !(session?.user?.role == "Admin") ){
      flash.message = "You must be an administrator to perform that task."
      redirect(controller:"user", action:"login")
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
        [FAQInstanceList: FAQ.list(params), FAQInstanceTotal: FAQ.count()]
    }

    def create() {
        [FAQInstance: new FAQ(params)]
    }

    def save() {
        def FAQInstance = new FAQ(params)
        if (!FAQInstance.save(flush: true)) {
            render(view: "create", model: [FAQInstance: FAQInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'FAQ.label', default: 'FAQ'), FAQInstance.id])
        redirect(action: "show", id: FAQInstance.id)
    }

    def show(Long id) {
        def FAQInstance = FAQ.get(id)
        if (!FAQInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "list")
            return
        }

        [FAQInstance: FAQInstance]
    }

    def edit(Long id) {
        def FAQInstance = FAQ.get(id)
        if (!FAQInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "list")
            return
        }

        [FAQInstance: FAQInstance]
    }

    def update(Long id, Long version) {
        def FAQInstance = FAQ.get(id)
        if (!FAQInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (FAQInstance.version > version) {
                FAQInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'FAQ.label', default: 'FAQ')] as Object[],
                          "Another user has updated this FAQ while you were editing")
                render(view: "edit", model: [FAQInstance: FAQInstance])
                return
            }
        }

        FAQInstance.properties = params

        if (!FAQInstance.save(flush: true)) {
            render(view: "edit", model: [FAQInstance: FAQInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'FAQ.label', default: 'FAQ'), FAQInstance.id])
        redirect(action: "show", id: FAQInstance.id)
    }

    def delete(Long id) {
        def FAQInstance = FAQ.get(id)
        if (!FAQInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "list")
            return
        }

        try {
            FAQInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'FAQ.label', default: 'FAQ'), id])
            redirect(action: "show", id: id)
        }
    }
	

	// Show all the FAQ's //
	
    def all(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [FAQInstanceList: FAQ.list(params)]
    }








}
