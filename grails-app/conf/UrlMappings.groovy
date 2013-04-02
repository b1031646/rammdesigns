class UrlMappings {

	static mappings = {


		// Default Mapping //
	
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		
	// Mapping for product category pages //	
	
    "/product/" {
        controller = 'product'
        action = 'category'
    }





		
		// Mapping for homepage //

		"/"(controller:'home', action:"/index")



		"500"(view:'/error')
	}
}
