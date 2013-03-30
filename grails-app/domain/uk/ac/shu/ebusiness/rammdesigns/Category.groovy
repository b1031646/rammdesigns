package uk.ac.shu.ebusiness.rammdesigns
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors

@Validateable
class Category {


	String categoryName	
	String categoryDescription



	Set products


	String toString() {
        return categoryName
   	 }


	static hasMany = [products: Product]
  
 	static mappedBy = [products: "category"]


    static constraints = {

	categoryName blank:false, unique:true, maxSize:30;
        categoryDescription blank:false;

    }

	  static mapping = {
    categoryDescription column: 'category_description', type:'text'

  }



}
