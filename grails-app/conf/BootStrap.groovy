import uk.ac.shu.ebusiness.rammdesigns.*;


class BootStrap {

 
def init = {servletContext ->

	
	println('BootStrap::init');


	// Add test Users //

	def User_Admin = lookupOrCreateUser('Admin', 'Admin', 'admin', 'admin', 'Admin')
	def User_Jade = lookupOrCreateUser('Alison', 'Roberts', 'alison', 'alison', 'Member')
	def User_Jack = lookupOrCreateUser('Shaun', 'Daniels', 'shaun', 'shaun', 'Member')
	def User_Dannielle = lookupOrCreateUser('Dannielle', 'Green', 'dannielle', 'dannielle', 'Member')
	def User_James = lookupOrCreateUser('James', 'Atkinson', 'james', 'james', 'Member')
	def User_Paul = lookupOrCreateUser('Jessica', 'Shaw', 'jessica', 'jessica', 'Member')
	def User_Anne = lookupOrCreateUser('Matthew', 'Smith', 'matthew', 'matthew', 'Member')

	// Add test Categories //

	def Category_Logo = lookupOrCreateCategory('Logo Design', 'Choose from a range of Logo sizes to suit all needs')
	def Category_Banner = lookupOrCreateCategory('Banner Design', 'Choose from a range of Banner sizes to suit all needs')
	def Category_Poster = lookupOrCreateCategory('Poster Design', 'Choose from a range of Poster sizes to suit all needs')
	def Category_BusinessCard = lookupOrCreateCategory('Business Card Design', 'Choose from a range of Business Card sizes to suit all needs')
	def Category_SocialMedia = lookupOrCreateCategory('Social Media Design', 'Choose from a range of Social Media Packages to suit all needs')
	def Category_NeedSomethingElse = lookupOrCreateCategory('Need Something Else?', 'If you need a custom size our would like to discuss something give us a call')
	

	// Add test Products //

	
	// In Logo Category //
	def Product_Logo1 = lookupOrCreateProduct('Logo1', 'Logo1Desc', 'img/team/colledge.png',Category_Logo )
	def Product_Logo2 = lookupOrCreateProduct('Logo2', 'Logo2Desc', 'img/team/colledge.png',Category_Logo )
	def Product_Logo3 = lookupOrCreateProduct('Logo3', 'Logo3Desc', 'img/team/colledge.png',Category_Logo )
	def Product_Logo4 = lookupOrCreateProduct('Logo4', 'Logo4Desc', 'img/team/colledge.png',Category_Logo )

	// In Banner Category //
	def Product_Banner1 = lookupOrCreateProduct('Banner1', 'Banner1Desc', 'img/team/colledge.png',Category_Banner )
	def Product_Banner2 = lookupOrCreateProduct('Banner2', 'Banner2Desc', 'img/team/colledge.png',Category_Banner )
	def Product_Banner3 = lookupOrCreateProduct('Banner3', 'Banner3Desc', 'img/team/colledge.png',Category_Banner )
	def Product_Banner4 = lookupOrCreateProduct('Banner4', 'Banner4Desc', 'img/team/colledge.png',Category_Banner )

	// In Poster Category //
	def Product_Poster1 = lookupOrCreateProduct('Poster1', 'Poster1Desc', 'img/team/colledge.png',Category_Poster)
	def Product_Poster2 = lookupOrCreateProduct('Poster2', 'Poster2Desc', 'img/team/colledge.png',Category_Poster )
	def Product_Poster3 = lookupOrCreateProduct('Poster3', 'Poster3Desc', 'img/team/colledge.png',Category_Poster )
	def Product_Poster4 = lookupOrCreateProduct('Poster4', 'Poster4Desc', 'img/team/colledge.png',Category_Poster )

	// In Business Card Category //
	def Product_Business1 = lookupOrCreateProduct('Business1', 'Business1Desc', 'img/team/colledge.png',Category_BusinessCard)
	def Product_Business2 = lookupOrCreateProduct('Business2', 'Business2Desc', 'img/team/colledge.png',Category_BusinessCard )
	def Product_Business3 = lookupOrCreateProduct('Business3', 'Business3Desc', 'img/team/colledge.png',Category_BusinessCard)
	def Product_Business4 = lookupOrCreateProduct('Business4', 'Business4Desc', 'img/team/colledge.png',Category_BusinessCard )

	// In Social Media Category //
	def Product_Social1 = lookupOrCreateProduct('Social1', 'Social1Desc', 'img/team/colledge.png',Category_SocialMedia )
	def Product_Social2 = lookupOrCreateProduct('Social2', 'Social2Desc', 'img/team/colledge.png',Category_SocialMedia )
	def Product_Social3 = lookupOrCreateProduct('Social3', 'Social3Desc', 'img/team/colledge.png',Category_SocialMedia )
	def Product_Social4 = lookupOrCreateProduct('Social4', 'Social4Desc', 'img/team/colledge.png',Category_SocialMedia )



}

 

		// User //

	def lookupOrCreateUser (firstName,lastName,username,password,role){
	def result = User.findByUsername(username) ?: new User (firstName: firstName, lastName: lastName, username: username, password: password, role: role).save();
	return result
	}

		// Category //

	def lookupOrCreateCategory (categoryName,categoryDescription){
	def result = Category.findByCategoryName(categoryName) ?: new Category (categoryName: categoryName, categoryDescription: categoryDescription).save();
	return result
	}


		// Product //

	def lookupOrCreateProduct (productName,productDescription,filePath,category){
	def result = Product.findByProductName(productName) ?: new Product (productName: productName, productDescription: productDescription, filePath: filePath, category: category).save();
	return result
	}



    def destroy = {
    }
}
