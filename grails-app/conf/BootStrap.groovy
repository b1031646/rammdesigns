import uk.ac.shu.ebusiness.rammdesigns.*;


class BootStrap {

 
def init = {servletContext ->

	
	println('BootStrap::init');


	// Add test Users //

	def User_Admin = lookupOrCreateUser('Admin', 'Admin', 'admin', 'admin1', 'admin1', 'Admin')
	def User_Jade = lookupOrCreateUser('Alison', 'Roberts', 'alison', 'alison1','alison1', 'Member')
	def User_Jack = lookupOrCreateUser('Shaun', 'Daniels', 'shaun', 'shaun1','shaun1', 'Member')
	def User_Dannielle = lookupOrCreateUser('Dannielle', 'Green', 'dannielle','dannielle1', 'dannielle1', 'Member')
	def User_James = lookupOrCreateUser('James', 'Atkinson', 'james', 'james1','james1', 'Member')
	def User_Paul = lookupOrCreateUser('Jessica', 'Shaw', 'jessica', 'jessica1','jessica1', 'Member')
	def User_Anne = lookupOrCreateUser('Matthew', 'Smith', 'matthew', 'matthew1','matthew1', 'Member')


	// Add test Products //

	
	// In Logo Category //
	def Product_Logo1 = lookupOrCreateProduct('Logo - Single Design', 'This option will give you one logo designed to your specifications. If you would like more prototypes designing, then choose one of our multiple-prototype packages.', '1design.png','Logo Design',50.00 )
	def Product_Logo2 = lookupOrCreateProduct('Logo - Five Designs', 'This option will give you five different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '5designs.png','Logo Design',120.00 )
	def Product_Logo3 = lookupOrCreateProduct('Logo - Ten Designs', 'This option will give you ten different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '10designs.png','Logo Design',200.00 )
	def Product_Logo4 = lookupOrCreateProduct('Logo - Fifteen Designs', 'This option will give you fifteen different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '15designs.png','Logo Design',260.00 )
	def Product_Logo5 = lookupOrCreateProduct('Logo - Twenty Designs', 'This option will give you twenty different logos designed to your specifications. If you would like more prototypes designing, then choose a package offering more prototypes.', '20designs.png','Logo Design',300.00 )

	// In Banner Category //
	def Product_Banner1 = lookupOrCreateProduct('Static Banner', 'Make your company stand out online with our static web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords, which will help you to reach your potential clients easier. If you need an interactive banner making, see our other banner packages which will fulfil your needs.', 'static_banner.png','Banner Design',30.00 )
	def Product_Banner2 = lookupOrCreateProduct('Flash Banner - 1 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords. This package will cover a banner up to one minute in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '1min_banner.png','Banner Design',50.00 )
	def Product_Banner3 = lookupOrCreateProduct('Flash Banner - 2 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords. This package will cover a banner up to two minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '2min_banner.png','Banner Design',70.00 )
	def Product_Banner4 = lookupOrCreateProduct('Flash Banner - 3 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords. This package will cover a banner up to three minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '3min_banner.png','Banner Design',90.00 )
	def Product_Banner5 = lookupOrCreateProduct('Flash Banner - 5 Minute or Less', 'Make your company stand out online with our animated and interactive Flash web banner. These are typically found on websites in various sizes. They are compatible with advertising networks such as Google Adwords. This package will cover a banner up to five minutes in length. If you need a longer banner duration, then choose a banner package with a longer duration.', '5min_banner.png','Banner Design',120.00 )

	// In Poster Category //
	def Product_Poster1 = lookupOrCreateProduct('A6 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A6 single sided leaflets. These will fit in a pocket easily and make sure that your business gets noticed. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A6_single.png','Poster Design',40.00)
	def Product_Poster2 = lookupOrCreateProduct('A6 Poster - Double Sided', 'Make sure your company’s products, services or events stand out with our A6 double sided leaflets. These will fit in a pocket easily and make sure that your business gets noticed. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A6_double.png','Poster Design',60.00 )
	def Product_Poster3 = lookupOrCreateProduct('A5 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A5 single sided leaflets. These are the perfect size for storing in leaflet holders or for distribution. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A5_single.png','Poster Design',45.00 )
	def Product_Poster4 = lookupOrCreateProduct('A5 Poster - Double Sided', 'Make sure your company’s products, services or events stand out with our A5 double sided leaflets. These are the perfect size for storing in leaflet holders or for distribution. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A5_double.png','Poster Design',65.00 )
	def Product_Poster5 = lookupOrCreateProduct('A4 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A4 single sided posters. These are the perfect size for pinning up in spaces where space is limited. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A4_poster.png','Poster Design',70.00 )
	def Product_Poster6 = lookupOrCreateProduct('A3 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A3 single sided posters. These are the perfect size for pinning up in spaces where space is slightly limited. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A3_poster.png','Poster Design',75.00 )
	def Product_Poster7 = lookupOrCreateProduct('A2 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A2 single sided posters. These are the most popular sized posters that we offer. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A2_poster.png','Poster Design',80.00 )
	def Product_Poster8 = lookupOrCreateProduct('A1 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A1 single sided posters. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A1_poster.png','Poster Design',85.00 )
	def Product_Poster9 = lookupOrCreateProduct('A0 Poster - Single Sided', 'Make sure your company’s products, services or events stand out with our A0 single sided posters. Although we don’t handle printing in house, we have a number of recommended printers who will be happy to assist you.', 'A0_poster.png','Poster Design',90.00 )

	// In Business Card Category //
	def Product_Business1 = lookupOrCreateProduct('Business Card - Single Sided', 'This option allows you to add classic professional business cards to your promotional inventory. The business cards will be designed as near as possible to your specification.', 'business_card_single.png','Business Card Design',25.00)
	def Product_Business2 = lookupOrCreateProduct('Business Card - Double Sided', 'Give your business that extra finished touch by using our double sided option. This will boost your edge over competition and make your business easily recognisable.', 'business_card_double.png','Business Card Design',35.00 )

	// In Social Media Category //
	def Product_Social1 = lookupOrCreateProduct('Facebook Cover Photo', 'Give your business the ability to stand out amongst competitors by having a recognisable cover photo. Cover photos are typically used on Facebook for advertising purposes. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'facebook_cover.png','Social Media Design',20.00 )
	def Product_Social2 = lookupOrCreateProduct('Facebook Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'facebook_profile.png','Social Media Design',10.00 )
	def Product_Social3 = lookupOrCreateProduct('Twitter Header Image', 'Give your business the ability to stand out amongst competitors by having a recognisable Twitter header image. These typically contain colour gradients as there is not too much space for promotional content in this area.', 'twitter_header.png','Social Media Design',15.00 )
	def Product_Social4 = lookupOrCreateProduct('Twitter Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'twitter_profile.png','Social Media Design',10.00 )
	def Product_Social5 = lookupOrCreateProduct('Twitter Background Image', 'Give your business the ability to stand out amongst competitors by having a recognisable Twitter background image. This is visible on desktop and laptop browsers and is an ideal place to showcase your hottest products or services, or just simply your company’s identity.', 'twitter_background.png','Social Media Design',20.00 )
	def Product_Social6 = lookupOrCreateProduct('YouTube Header Image', 'Give your business the ability to stand out amongst competitors by having a recognisable YouTube header. This is a recently introduced feature as part of the ‘One Channel’ design. It is the perfect area to stamp your company’s identity, with an option to place customised links to your website and social network pages.', 'youtube_header.png','Social Media Design',20.00 )
	def Product_Social7 = lookupOrCreateProduct('YouTube Profile Image', 'Give your business the ability to stand out amongst competitors by having a recognisable profile picture. Please note: this package does not include logo design, so if you do not have a logo already, then please order a logo package as well.', 'youtube_profile.png','Social Media Design',10.00 )




	// Add test Subscriptions //

	def Subscription_script1 = lookupOrCreateSubscription('Barry', 'BarryScott@AOL.com')
	def Subscription_script2 = lookupOrCreateSubscription('Lisa', 'Lisa_89@yahoomail.com')
	def Subscription_script3 = lookupOrCreateSubscription('Robert', 'Rob_will@googlemail.com')	
	def Subscription_script4 = lookupOrCreateSubscription('Matthew', 'Matthew1992@live.com')
	def Subscription_script5 = lookupOrCreateSubscription('Rose', 'Rose_red@gmail.com')
	def Subscription_script6 = lookupOrCreateSubscription('Mike', 'mike@hotmail.com')
	def Subscription_script7 = lookupOrCreateSubscription('Jamie', 'JB1982@btinternet.com')
	def Subscription_script8 = lookupOrCreateSubscription('Harry', 'HarryHog@gmail.com')



	// Add test Contact Submissions //

	def Contact_Con1 = lookupOrCreateContact('Gina', 'Gina11@hotmail.com', 'Hello, just emailing to ask if you provide the vector image with my purchase? Regards Gina')
	def Contact_Con2 = lookupOrCreateContact('Mary', 'Mary_bh@gmail.com', 'Hello, just wanted to thank Michael for the excellent vintage design for my leaflet. Best wishes Mary ')
	def Contact_Con3 = lookupOrCreateContact('Gerry', 'g_erry@AOL.com', 'Hello, I am Gerry. Could you possibly do me a flash banner for over five minutes and if so what is the price?')
	def Contact_Con4 = lookupOrCreateContact('Michael', 'M_K_Y@gmail.com', 'Hello, just wanted to know which version of Photoshop the team uses? Many thanks Mike')
	def Contact_Con5 = lookupOrCreateContact('Kit', 'kit_09@hotmail.com', 'Hi, I am looking to purchase a service from China, can I pay in renminbi? Thank you Kit')
	def Contact_Con6 = lookupOrCreateContact('Ken', 'KenHarrison@hotmail.com', 'Hi there, I am Ken, just emailing to ask if you do designs for Tumblr?')
	def Contact_Con7 = lookupOrCreateContact('Larry', 'Larry-king@yahoomail.co.uk', 'Hello, RAMM, just wanted to thank you for your quick and professional work. I shall be coming back! Regards!')
	def Contact_Con8 = lookupOrCreateContact('James', 'James_Low_99@live.co.uk', 'I still have a myspace account. Can you do myspace designs? Thank you James.')


	// Add test FAQ's //

	def FAQ1 = lookupOrCreateFAQ('Which file format will I receive?', 'All designs are available in all file formats, we do provide multiple formats.')
	def FAQ2 = lookupOrCreateFAQ('What resources do you use for poster design?', 'We use the top of the range high end iMacs with Adobe CS6 Master Collection.')
	def FAQ3 = lookupOrCreateFAQ('Can you make interactive posters for websites?', 'We do not advertise interactive posters, however this can be arranged but it will be based on a quote.')
	def FAQ4 = lookupOrCreateFAQ('Can I change my business card order once I have submitted it?', 'Yes, of course, RAMM Design makes sure you get what you pay for. ')
	def FAQ5 = lookupOrCreateFAQ('How many changes can I make to the banner?', 'Every design comes with two revision rounds ')
	def FAQ6 = lookupOrCreateFAQ('When will I get to see a sample of the artwork? ', 'Indeed, RAMM Designs want to make sure you love the design before they finalise.')
	def FAQ7 = lookupOrCreateFAQ('Do you produce any other social media from the ones stated? ', 'Yes, we can definitely tailor our social media designs to your needs, we have previously produced designs for Google + and Tumblr. ')





}

 

		// User //

	def lookupOrCreateUser (firstName,lastName,username,password,confirm,role){
	def result = User.findByUsername(username) ?: new User (firstName: firstName, lastName: lastName, username: username, password: password, confirm: confirm, role: role).save();
	return result
	}




		// Product //

	def lookupOrCreateProduct (productName,productDescription,filePath,category,price){
	def result = Product.findByProductName(productName) ?: new Product (productName: productName, productDescription: productDescription, filePath: filePath, category: category, price: price).save();
	return result
	}


		// Subscriptions //

	def lookupOrCreateSubscription (name,email){
	def result = Subscription.findByEmail(email) ?: new Subscription (name: name, email: email).save();
	return result
	}


		// Contact //

	def lookupOrCreateContact (name,email,message){
	def result = Contact.findByName(name) ?: new Contact (name: name, email: email, message: message).save();
	return result
	}


		// FAQ //

	def lookupOrCreateFAQ (question,answer){
	def result = FAQ.findByQuestion(question) ?: new FAQ (question: question, answer: answer).save();
	return result
	}


    def destroy = {
    }
}
