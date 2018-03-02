public class CheckObject {
    /*
     	Checks to see if an object exists.

		Call Exist with the label of the object and the function returns true if the object exists; otherwise false.

	    example: CheckObject.Exist('account'); - most likely would return true
                 CheckObject.Exist('koda'); - would return false if an object with the label koda doesn't exist.
        String values are case insensitive.

    */
    public static boolean Exist(String objectLabel) {
        // sObject types to describe
        String[] types = new String[]{objectLabel};
        Schema.DescribeSobjectResult[] results;        
        try {            
        	// Make the describe call
       		results = Schema.describeSObjects(types);
        } catch (InvalidParameterValueException e) {
            return false;
        } 
        return (results.size() > 0);  
/*        
        System.debug('Got describe information for ' + results.size() + ' sObjects.');
        
        // For each returned result, get some info
        for(Schema.DescribeSobjectResult res : results) {
            System.debug('sObject Label: ' + res.getLabel());
            System.debug('Number of fields: ' + res.fields.getMap().size());
            System.debug(res.isCustom() ? 'This is a custom object.' : 'This is a standard object.');
            // Get child relationships
            Schema.ChildRelationship[] rels = res.getChildRelationships();
            if (rels.size() > 0) {
                System.debug(res.getName() + ' has ' + rels.size() + ' child relationships.');
            }
        }
*/        
    }
}
