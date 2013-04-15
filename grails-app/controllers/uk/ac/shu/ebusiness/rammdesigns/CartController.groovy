package uk.ac.shu.ebusiness.rammdesigns

import org.springframework.dao.DataIntegrityViolationException

class CartController {

  def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [cartInstanceList: Cart.list(params), cartInstanceTotal: Cart.count()]
    }

    def create() {

        [cartInstance: new Cart(params)]
    }

    def save() {

        def cartInstance = new Cart(params)
        if (!cartInstance.save(flush: true)) {
            render(view: "create", model: [cartInstance: cartInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'cart.label', default: 'Cart'), cartInstance.id])
        redirect(action: "show", id: cartInstance.id)
    }

    def show(Long id) {
        def cartInstance = Cart.get(id)
        if (!cartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "list")
            return
        }

        [cartInstance: cartInstance]
    }

    def edit(Long id) {
        def cartInstance = Cart.get(id)
        if (!cartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "list")
            return
        }

        [cartInstance: cartInstance]
    }

    def update(Long id, Long version) {
        def cartInstance = Cart.get(id)
        if (!cartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (cartInstance.version > version) {
                cartInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'cart.label', default: 'Cart')] as Object[],
                          "Another user has updated this Cart while you were editing")
                render(view: "edit", model: [cartInstance: cartInstance])
                return
            }
        }

        cartInstance.properties = params

        if (!cartInstance.save(flush: true)) {
            render(view: "edit", model: [cartInstance: cartInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'cart.label', default: 'Cart'), cartInstance.id])
        redirect(action: "show", id: cartInstance.id)
    }

    def delete(Long id) {
        def cartInstance = Cart.get(id)
        if (!cartInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "list")
            return
        }

        try {
            cartInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "show", id: id)
        }
    }



 // Here is the code to add products to the cart //

    def cart() {


// Here i save a copy of the product id so the user can be returned to the same page after item has been added to the cart //

def returnpage = (params.product.id)



        def cartInstance = new Cart(params)
        if (!cartInstance.save(flush: true)) {
            
	flash.message = "Oops.. Something went wrong..."

        redirect(controller:"product", action: "detail", id: returnpage)
        }

        flash.message = "Item Added To Cart"

        redirect(controller:"product", action: "detail", id: returnpage)
    }



	// Functionality to display the contents of a users basket //


def showcart() {

//println(springSecurityService.principal)
// def user = User.get(springSecurityService.principal.id)

def result = [cart:Cart.findAllByUser(session.user)]
result.total = 0
result.cart.each { cartentry ->
result.total+=cartentry.product.price
}
  result

}





def showcart2() {
  def crit = Product.createCriteria()
  def products_in_cart = crit.list {
    cart_entries {
      user {
        eq('username',session.user.username)
      }
    }
  }
  def result=[cart:products_in_cart]
  return result;
}

	// Delete from cart //

    def cartdelete(Long id) {
        def cartInstance = Cart.get(id)
println(cartInstance)
        if (!cartInstance) {
            flash.message = (" ${params.id} Item removed from cart")
            redirect(action: "showcart")
            return
        }

        try {
            cartInstance.delete(flush: true)
          flash.message = ("Item removed from cart")
            redirect(action: "showcart")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'cart.label', default: 'Cart'), id])
            redirect(action: "show", id: id)
        }
    }




}
