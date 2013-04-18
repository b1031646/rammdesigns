package uk.ac.shu.ebusiness.rammdesigns


// Cart Class //


class Cart {


	Date dateCreated  // Timestamp: automatically populated by GORM //

	// Attributes //
	
	User user
	Product product


    static constraints = {
    }
}
