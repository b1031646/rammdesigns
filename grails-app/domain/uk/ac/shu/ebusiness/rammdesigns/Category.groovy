package uk.ac.shu.ebusiness.rammdesigns

// Imports to support validation //

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors
@Validateable


// Category Class //

class Category {

	// Attributes //

	String categoryName	
	String categoryDescription
	
	// toString() returns the category name instead of the id to make the scaffolded interfaces easier to work with //

	String toString() {
        return categoryName
   	 }


	// Constraints //

	static constraints = {

	categoryName blank:false, unique:true, maxSize:30;
	categoryDescription blank:false;

	}

	// Mapping //

	static mapping = {
	categoryDescription column: 'category_description', type:'text'

	}



}
