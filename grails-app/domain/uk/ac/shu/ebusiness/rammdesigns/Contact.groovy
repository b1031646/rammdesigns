package uk.ac.shu.ebusiness.rammdesigns

// Imports to support validation //

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors
@Validateable


// Subscription Class //

class Contact {


	// Attributes //

	Date dateCreated  // Timestamp: automatically populated by GORM //

	String name
	String email
	String message
	
	// toString() returns the product name instead of the id to make the scaffolded interfaces easier to work with //	
	
	String toString() {
        return name
   	 }


	// Constraints //
	
	static constraints = {
	name (blank:false, maxSize:75);
	email (size: 1..255, blank: false, email:true);
	name (notEqual: "Enter your name")
	message (blank:false);
	}

	}


