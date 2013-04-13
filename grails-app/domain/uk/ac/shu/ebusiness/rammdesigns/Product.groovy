package uk.ac.shu.ebusiness.rammdesigns

// Imports to support validation //

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors
@Validateable


// Product Class //

class Product {

	// Attributes //
	
	Date dateCreated // Timestamp: automatically populated by GORM //

	String productName
	String productDescription

	String filePath // Stores the product image filename //
	String category = "Logo Design"
	Double price
	
	// toString() returns the product name instead of the id to make the scaffolded interfaces easier to work with //

	String toString() {
        return productName
   	 }

	Set cart_entries

	static hasMany = [cart_entries: Cart]

	static mappedBy = [cart_entries: "product"]	


	// Constraints //
	
	static constraints = {
	productName blank:false, unique:true, maxSize:50;
	productDescription blank:false;	
	filePath blank:false, matches:/[\S]+/;	
	category(inList:["Logo Design", "Banner Design", "Poster Design", "Business Card Design", "Social Media Design"])
	category blank:false;
	price blank:false;
	}

	// Mapping //

	static mapping = {
	productDescription column: 'product_description', type:'text'

	}

	}
