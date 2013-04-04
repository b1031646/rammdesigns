package uk.ac.shu.ebusiness.rammdesigns

// Imports to support validation //

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors
@Validateable

// User Class //

class User {

	// Attributes //

	Date dateCreated // Timestamp: automatically populated by GORM //
	Date lastUpdated // Timestamp: automatically populated by GORM //
 
	
	String firstName
	String lastName
	String username
	String password
	String confirm       
	String role = "Member"
    	

	   // transients
    static transients = ['confirm']

	// toString() returns the product name instead of the id to make the scaffolded interfaces easier to work with //	
	
	String toString() {
        return username
   	 }

 
	// Constraints //

	static constraints = {
	firstName blank:false;
	confirm bindable: true;
	lastName  blank:false;


	// Here we check to make sure the username is not the same as the password when registering a new user //

	username  blank:false, size:5..15, matches:/[\S]+/, unique:true, validator:{ val, obj ->
	 if (obj.username == obj.password)
                return 'user.password.same.as.username'
	}


	role(inList:["Member", "Admin"])


	// Here we check to make sure both passwords match before registration //

	password  blank:false, size:5..15, matches:/[\S]+/, validator:{ val, obj ->
	 if (obj.password != obj.confirm)
                return 'user.password.dontmatch'
	}





}
}
