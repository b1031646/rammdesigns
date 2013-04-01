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



	


	String toString() {
        return categoryName
   	 }





    static constraints = {

	categoryName blank:false, unique:true, maxSize:30;
        categoryDescription blank:false;

    }

	  static mapping = {
    categoryDescription column: 'category_description', type:'text'

  }



}
