package uk.ac.shu.ebusiness.rammdesigns
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.ValidationUtils;
import grails.validation.Validateable
import org.springframework.validation.Errors

@Validateable
class User {
    // time stamps: automatically populated by GORM
    Date dateCreated
    Date lastUpdated
 
    // properties
    String firstName
    String lastName
    String username
    String password       

    

 
    // constraints
    static constraints = {
        firstName blank:false;
        lastName  blank:false;
        username  blank:false, size:5..15, matches:/[\S]+/, unique:true
        password  blank:false, size:5..15, matches:/[\S]+/
        
    }





}
