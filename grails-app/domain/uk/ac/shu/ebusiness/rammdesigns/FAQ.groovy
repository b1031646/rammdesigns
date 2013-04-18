package uk.ac.shu.ebusiness.rammdesigns


// FAQ Class //

class FAQ {


	// Attributes //

	String question	
	String answer
	String category = "General"

	

// toString() returns the category name instead of the id to make the scaffolded interfaces easier to work with //

	String toString() {
        return question
   	 }

    static constraints = {
	question blank:false, unique:true;
	answer blank:false;
	category(inList:["General"])
    }
	

	static mapping = {
	question column: 'question', type:'text'
	answer column: 'answer', type:'text'

	}

}
