package rammdesigns

class LoginTagLib {

 def loginControl = {
    if(session?.user){
      out << "Hello ${session.user.username}   >>"
      out << """ ${link(action:"logout", controller:"user"){"Logout"}}   """ 

	  if (session?.user.role == "Admin"){
	out<< """   /  ${link(action:"admin_area", controller:"user"){"Admin Area"}}    """
	out << """   /  ${link(action:"showcart", controller:"cart"){"Your Cart"}}   """  

    } else if (session?.user.role == "Member") { 
      out << """   /  ${link(action:"my_account", controller:"user") {"My Account"}}"""
	  out << """   /  ${link(action:"showcart", controller:"cart"){"Your Cart"}}   """       
    }


    } else {
      out << """${link(action:"login", controller:"user"){"Login/Register"}}"""      
    }
  }

}





