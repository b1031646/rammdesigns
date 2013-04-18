package uk.ac.shu.ebusiness.rammdesigns


// Subscription Class //

class Subscription {


	// Attributes //

	Date dateCreated  // Timestamp: automatically populated by GORM //

	String name
	String email
	
	// toString() returns the product name instead of the id to make the scaffolded interfaces easier to work with //	
	
	String toString() {
        return name
   	 }


	// Constraints //
	
	static constraints = {
	name (blank:false, maxSize:75);
	email (size: 1..255, blank: false, email:true, unique:true);
	name (notEqual: "Enter your name")
	}

	}


