/**
 * A cool myQuestionNotActiveE entity
 */
component persistent="true" table="myQuestionNotActiveE"{

	// Primary Key
	property name="id" fieldtype="id" column="id" generator="native" setter="false";

	// Properties
	

	// Validation
	this.constraints = {
		// Example: age = { required=true, min="18", type="numeric" }
	};

	// Mementifier
	this.memento = {
		// An array of the properties/relationships to include by default
		defaultIncludes = [ "*" ],
		// An array of properties/relationships to exclude by default
		defaultExcludes = [],
		// An array of properties/relationships to NEVER include
		neverInclude = [],
		// A struct of defaults for properties/relationships if they are null
		defaults = {},
		// A struct of mapping functions for properties/relationships that can transform them
		mappers = {}
	};

	/**
	 * Constructor
	 */
	function init(){
		
		return this;
	}
}

