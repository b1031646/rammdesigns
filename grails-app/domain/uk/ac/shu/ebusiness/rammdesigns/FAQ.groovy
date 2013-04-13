package uk.ac.shu.ebusiness.rammdesigns

class FAQ {


	// Attributes //

	String question	
	String answer

	User user
	Category category

// toString() returns the category name instead of the id to make the scaffolded interfaces easier to work with //

	String toString() {
        return question
   	 }

    static constraints = {
	question blank:false, unique:true;
	answer blank:false;
    }
	

	static mapping = {
	question column: 'question', type:'text'
	answer column: 'answer', type:'text'

	}

}
