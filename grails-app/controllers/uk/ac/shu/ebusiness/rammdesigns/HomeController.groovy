package uk.ac.shu.ebusiness.rammdesigns

class HomeController {

	def index() { 
	[:]
	}

	def about() {
        [:]
    	}

 	def contact() {
        [:]
	}

 	def view_post() {
        [:]
	}

	def products() {
        [:]
	}

	def product_list() {
        [:]
	}

	def team() {
        [:]
	}

	def view_work() {
        [:]
	}
	

	



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
