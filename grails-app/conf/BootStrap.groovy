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
	def Product_Logo1 = lookupOrCreateProduct('Logo - Single Design', 'This option will give you one logo designed to your specifications. If you would like more prototypes designing, then choose one of our multiple-prototype packages.', '1design.png','Logo Design',00.00 )
	def Product_Logo2 = lookupOrCreateProduct('Logo - Five Designs', 'This option will give you five different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '5designs.png','Logo Design',00.00 )
	def Product_Logo3 = lookupOrCreateProduct('Logo - Ten Designs', 'This option will give you ten different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '10designs.png','Logo Design',00.00 )
	def Product_Logo4 = lookupOrCreateProduct('Logo - Fifteen Designs', 'This option will give you fifteen different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '15designs.png','Logo Design',00.00 )
	def Product_Logo5 = lookupOrCreateProduct('Logo - Twenty Designs', 'This option will give you twenty different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '20designs.png','Logo Design',00.00 )

	// In Banner Category //
	def Product_Banner1 = lookupOrCreateProduct('Static Banner', 'Make your company stand out online with our static web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. If you need an interactive banner making, see our other banner packages which will fulfil your needs.', 'static_banner.png','Banner Design',00.00 )
	def Product_Banner2 = lookupOrCreateProduct('Flash Banner - 1 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. This package will cover a banner up to one minute in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '1min_banner.png','Banner Design',00.00 )
	def Product_Banner3 = lookupOrCreateProduct('Flash Banner - 2 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. This package will cover a banner up to two minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '2min_banner.png','Banner Design',00.00 )
	def Product_Banner4 = lookupOrCreateProduct('Flash Banner - 3 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. This package will cover a banner up to three minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '3min_banner.png','Banner Design',00.00 )
	def Product_Banner5 = lookupOrCreateProduct('Flash Banner - 5 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. This package will cover a banner up to five minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '5min_banner.png','Banner Design',00.00 )

	// In Poster Category //
	def Product_Poster1 = lookupOrCreateProduct('A6 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A6 single sided leaflets. These will fit in a pocket easily and make sure that your business gets noticed. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A6_single.png','Poster Design',00.00)
	def Product_Poster2 = lookupOrCreateProduct('A6 Poster - Double Sided', 'Make sure your company’s products, services or events stand out with our A6 double sided leaflets. These will fit in a pocket easily and make sure that your business gets noticed. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A6_double.png','Poster Design',00.00 )
	def Product_Poster3 = lookupOrCreateProduct('A5 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A5 single sided leaflets. These are the perfect size for storing in leaflet holders or for distribution. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A5_single.png','Poster Design',00.00 )
	def Product_Poster4 = lookupOrCreateProduct('A5 Poster - Double Sided', 'Make sure your company’s products, services or events stand out with our A5 double sided leaflets. These are the perfect size for storing in leaflet holders or for distribution. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A5_double.png','Poster Design',00.00 )
	def Product_Poster5 = lookupOrCreateProduct('A4 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A4 single sided posters. These are the perfect size for pinning up in spaces where space is limited. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A4_poster.png','Poster Design',00.00 )
	def Product_Poster6 = lookupOrCreateProduct('A3 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A3 single sided posters. These are the perfect size for pinning up in spaces where space is slightly limited. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A3_poster.png','Poster Design',00.00 )
	def Product_Poster7 = lookupOrCreateProduct('A2 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A2 single sided posters. These are the most popular sized posters that we offer. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A2_poster.png','Poster Design',00.00 )
	def Product_Poster8 = lookupOrCreateProduct('A1 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A1 single sided posters. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A1_poster.png','Poster Design',00.00 )
	def Product_Poster9 = lookupOrCreateProduct('A0 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A0 single sided posters. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A0_poster.png','Poster Design',00.00 )

	// In Business Card Category //
	def Product_Business1 = lookupOrCreateProduct('Business Card - Single Sided', 'This option allows you to add classic professional business cards to your promotional inventory. The business cards will be designed as near as possible to your specification.', 'business_card_single.png','Business Card Design',00.00)
	def Product_Business2 = lookupOrCreateProduct('Business Card - Double Sided', 'Give your business that extra finished touch by using our double sided option. This will boost your edge over competition and make your business easily recognisable.', 'business_card_double.png','Business Card Design',00.00 )

	// In Social Media Category //
	def Product_Social1 = lookupOrCreateProduct('Facebook Cover Photo', 'Give your business the ability to stand out amongst competitors by having a recognisable cover photo. Cover photos are typically used on Facebook for advertising purposes. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'facebook_cover.png','Social Media Design',00.00 )
	def Product_Social2 = lookupOrCreateProduct('Facebook Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'facebook_profile.png','Social Media Design',00.00 )
	def Product_Social3 = lookupOrCreateProduct('Twitter Header Image', 'Give your business the ability to stand out amongst competitors by having a recognisable Twitter header image. These typically contain colour gradients as there is not too much space for promotional content in this area.', 'twitter_header.png','Social Media Design',00.00 )
	def Product_Social4 = lookupOrCreateProduct('Twitter Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'twitter_profile.png','Social Media Design',00.00 )
	def Product_Social5 = lookupOrCreateProduct('Twitter Background Image', 'Give your business the ability to stand out amongst competitors by having a recognisable Twitter background image. This is visible on desktop and laptop browsers and is an ideal place to showcase your hottest products or services, or just simply your company’s identity.', 'twitter_background.png','Social Media Design',00.00 )
	def Product_Social6 = lookupOrCreateProduct('YouTube Header Image', 'Give your business the ability to stand out amongst competitors by having a recognisable YouTube header. This is a recently introduced feature as part of the ‘One Channel’ design. It is the perfect area to stamp your company’s identity, with an option to place customised links to your website and social network pages.', 'youtube_header.png','Social Media Design',00.00 )
	def Product_Social7 = lookupOrCreateProduct('YouTube Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'youtube_profile.png','Social Media Design',00.00 )



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
