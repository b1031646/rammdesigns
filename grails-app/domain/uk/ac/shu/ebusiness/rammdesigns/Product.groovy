package uk.ac.shu.ebusiness.rammdesigns
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors

@Validateable
class Product {

// time stamps: automatically populated by GORM
	Date dateCreated
	


	String productName
	String productDescription
	String filePath
	String category = "LogoDesign"

	
	String toString() {
        return productName
   	 }



	
    static constraints = {
	productName blank:false, unique:true, maxSize:30;
        productDescription blank:false;	
	filePath blank:false, matches:/[\S]+/;	
	category(inList:["LogoDesign", "BannerDesign", "PosterDesign", "BusinessCardDesign", "SocialMediaDesign"])
	productName blank:false;
    }

	static mapping = {
    productDescription column: 'product_description', type:'text'

  }

}
