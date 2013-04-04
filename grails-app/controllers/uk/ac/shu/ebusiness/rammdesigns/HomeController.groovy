package uk.ac.shu.ebusiness.rammdesigns

class HomeController {


	// Index page containing subscribe functionality //

	def index() { 

	if(request.method == 'POST') {

	def s = new Subscription()

	s.properties['name', 'email'] = params

	if(s.save()) {

	flash.message = "You have successfully subscribed. Thank you."

	redirect controller:"home"

	} else {

	return [subscription:s]

	}
	}
	}


	def contact() {

	if(request.method == 'POST') {

	def c = new Contact()

	c.properties['name', 'email','message'] = params

	if(c.save()) {

	flash.message = "Your message has been sent. We will be in touch shortly."

	redirect(controller:"home", action:"contact")

	} else {

	return [contact:c]

	}
	}
	}




	// Page Links //

	def about() {}

 	def view_post() {}

	def products() {}

	def product_list() {}

	def team() {}

	def view_work() {}
	




	//EXTERNAL LINKS//

	//Social Media//

	def twitter() {
	redirect(url: "https://twitter.com/RAMM_Designs")
	}

	def facebook() {
	redirect(url: "https://www.facebook.com/")
	}

	def google() {
	redirect(url: "http://plus.google.com")
	}

	def pinterest() {
	redirect(url: "http://pinterest.com/")
	}	

	def youtube() {
	redirect(url: "http://www.youtube.com/")
	}

	def rss() {
	redirect(url: "http://en.wikipedia.org/wiki/RSS")
	}
	

	
	//Contact Page//		
		
	def buses() {
	redirect(url: "http://www.travelsouthyorkshire.com/traveline")
	}

	def video() {
	redirect(url: "https://www.dropbox.com/s/xag5mro32geukur/Banner%20-%201.mp4")
  
	}








}
