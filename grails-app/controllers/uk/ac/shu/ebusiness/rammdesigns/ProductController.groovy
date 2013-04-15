package uk.ac.shu.ebusiness.rammdesigns

import org.springframework.dao.DataIntegrityViolationException

class ProductController {


	// Before Interceptor that restricts access to Admin users only //

def beforeInterceptor = [action:this.&auth, 
                           except:["category", "detail","cart"]]

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
        [productInstanceList: Product.list(params), productInstanceTotal: Product.count()]
    }

    def create() {
        [productInstance: new Product(params)]
    }

    def save() {
        def productInstance = new Product(params)
        if (!productInstance.save(flush: true)) {
            render(view: "create", model: [productInstance: productInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def show(Long id) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def edit(Long id) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        [productInstance: productInstance]
    }

    def update(Long id, Long version) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (productInstance.version > version) {
                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'product.label', default: 'Product')] as Object[],
                          "Another user has updated this Product while you were editing")
                render(view: "edit", model: [productInstance: productInstance])
                return
            }
        }

        productInstance.properties = params

        if (!productInstance.save(flush: true)) {
            render(view: "edit", model: [productInstance: productInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def delete(Long id) {
        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
            return
        }

        try {
            productInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "show", id: id)
        }
    }



	//PRODUCT WORK //


def category() {


	// List all products in requested category e.g All products in the banner category //

        params.max = Math.min(params.max ? params.int('max') : 5, 100)
 
     def testList = Product.findAll {
    category == "${params.category}"
	}
 
        [testInstanceList: testList]


    }

	// Show details of a selected product on the product_detail page //

    def detail(Long id) {
	
	

        def productInstance = Product.get(id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), id])
            redirect(action: "detail")
            return
        }

        [productInstance: productInstance]
    }
	

	// Functionality to add products into a users shopping cart //

	def cart(){

	if(request.method == 'POST') {

	def ca = new Cart()

	ca.properties['user', 'product'] = params

	if(ca.save()) {

	

	redirect(controller:"product", action:"detail")

	} else {

	return [cart:ca]

	}
	}
	
}

// Functionality to display the contents of a users basket //





}
