/**
 * A cool myQuestion entity
 */
component persistent="true" table="myQuestion" extends="cborm.models.ActiveEntity"{

	// Primary Key
	property name="id" fieldtype="id" column="id" generator="native" setter="false";

	// Properties

	/**
	 * Constructor
	 */
	function init(){
		super.init( useQueryCaching="false" );
		return this;
	}
}

