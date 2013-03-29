import uk.ac.shu.ebusiness.rammdesigns.*;


class BootStrap {

 
def init = {servletContext ->

	
	println('BootStrap::init');


	// Add test Users //

	def User_Admin = lookupOrCreateUser('Admin', 'Admin', 'admin', 'admin')
	def User_Jade = lookupOrCreateUser('Alison', 'Roberts', 'alison', 'alison')
	def User_Jack = lookupOrCreateUser('Shaun', 'Daniels', 'shaun', 'shaun')
	def User_Dannielle = lookupOrCreateUser('Dannielle', 'Green', 'dannielle', 'dannielle')
	def User_James = lookupOrCreateUser('James', 'Atkinson', 'james', 'james')
	def User_Paul = lookupOrCreateUser('Jessica', 'Shaw', 'jessica', 'jessica')
	def User_Anne = lookupOrCreateUser('Matthew', 'Smith', 'matthew', 'matthew')

	

}

 

		// User //

	def lookupOrCreateUser (firstName,lastName,username,password){
	def result = User.findByUsername(username) ?: new User (firstName: firstName, lastName: lastName, username: username, password: password).save();
	return result
	}






    def destroy = {
    }
}
