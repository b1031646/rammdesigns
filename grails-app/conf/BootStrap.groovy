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
	def Product_Logo1 = lookupOrCreateProduct('Logo - Single Design', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '1design.png','Logo Design',00.00 )
	def Product_Logo2 = lookupOrCreateProduct('Logo - Five Designs', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '5designs.png','Logo Design',00.00 )
	def Product_Logo3 = lookupOrCreateProduct('Logo - Ten Designs', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '10designs.png','Logo Design',00.00 )
	def Product_Logo4 = lookupOrCreateProduct('Logo - Fifteen Designs', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '15designs.png','Logo Design',00.00 )
	def Product_Logo5 = lookupOrCreateProduct('Logo - Twenty Designs', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '20designs.png','Logo Design',00.00 )

	// In Banner Category //
	def Product_Banner1 = lookupOrCreateProduct('Static Banner', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'static_banner.png','Banner Design',00.00 )
	def Product_Banner2 = lookupOrCreateProduct('Flash Banner - 1 Minute or Less', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '1min_banner.png','Banner Design',00.00 )
	def Product_Banner3 = lookupOrCreateProduct('Flash Banner - 2 Minute or Less', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '2min_banner.png','Banner Design',00.00 )
	def Product_Banner4 = lookupOrCreateProduct('Flash Banner - 3 Minute or Less', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '3min_banner.png','Banner Design',00.00 )
	def Product_Banner5 = lookupOrCreateProduct('Flash Banner - 5 Minute or Less', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', '5min_banner.png','Banner Design',00.00 )

	// In Poster Category //
	def Product_Poster1 = lookupOrCreateProduct('A6 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A6_single.png','Poster Design',00.00)
	def Product_Poster2 = lookupOrCreateProduct('A6 Poster - Double Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A6_double.png','Poster Design',00.00 )
	def Product_Poster3 = lookupOrCreateProduct('A5 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A5_single.png','Poster Design',00.00 )
	def Product_Poster4 = lookupOrCreateProduct('A5 Poster - Double Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A5_double.png','Poster Design',00.00 )
	def Product_Poster5 = lookupOrCreateProduct('A4 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A4_poster.png','Poster Design',00.00 )
	def Product_Poster6 = lookupOrCreateProduct('A3 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A3_poster.png','Poster Design',00.00 )
	def Product_Poster7 = lookupOrCreateProduct('A2 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A2_poster.png','Poster Design',00.00 )
	def Product_Poster8 = lookupOrCreateProduct('A1 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A1_poster.png','Poster Design',00.00 )
	def Product_Poster9 = lookupOrCreateProduct('A0 Poster - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'A0_poster.png','Poster Design',00.00 )

	// In Business Card Category //
	def Product_Business1 = lookupOrCreateProduct('Business Card - Single Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'business_card_single.png','Business Card Design',00.00)
	def Product_Business2 = lookupOrCreateProduct('Business Card - Double Sided', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'business_card_double.png','Business Card Design',00.00 )

	// In Social Media Category //
	def Product_Social1 = lookupOrCreateProduct('Facebook Cover Photo', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'facebook_cover.png','Social Media Design',00.00 )
	def Product_Social2 = lookupOrCreateProduct('Facebook Profile Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'facebook_profile.png','Social Media Design',00.00 )
	def Product_Social3 = lookupOrCreateProduct('Twitter Header Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'twitter_header.png','Social Media Design',00.00 )
	def Product_Social4 = lookupOrCreateProduct('Twitter Profile Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'twitter_profile.png','Social Media Design',00.00 )
	def Product_Social5 = lookupOrCreateProduct('Twitter Background Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'twitter_background.png','Social Media Design',00.00 )
	def Product_Social6 = lookupOrCreateProduct('YouTube Header Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'youtube_header.png','Social Media Design',00.00 )
	def Product_Social7 = lookupOrCreateProduct('YouTube Profile Image', 'This is the product description. This is the product description. This is the product description. This is the product description. This is the product description. This is the product description.', 'youtube_profile.png','Social Media Design',00.00 )



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

	def lookupOrCreateProduct (productName,productDescription,filePath,category,price){
	def result = Product.findByProductName(productName) ?: new Product (productName: productName, productDescription: productDescription, filePath: filePath, category: category, price: price).save();
	return result
	}



    def destroy = {
    }
}
