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
	String role = "Member"
    

	// toString() returns the product name instead of the id to make the scaffolded interfaces easier to work with //	
	
	String toString() {
        return username
   	 }

 
	// Constraints //

	static constraints = {
	firstName blank:false;
	lastName  blank:false;
	username  blank:false, size:5..15, matches:/[\S]+/, unique:true;
	password  blank:false, size:5..15, matches:/[\S]+/;
	role(inList:["Member", "Admin"])
	}





}
