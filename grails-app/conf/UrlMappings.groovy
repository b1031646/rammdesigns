class UrlMappings {

	static mappings = {


	
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		
    "/showCategory/$categoryName"(controller:'category', action:'show')






		"/"(controller:'home', action:"/index")
		"500"(view:'/error')
	}
}
