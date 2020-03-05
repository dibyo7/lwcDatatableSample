public with sharing class GetObjectData {
    @AuraEnabled(cacheable=true)
    public static List<SObject> retrieveFields(String objName, List<String> fieldNames){
        String strQuery = '';
        String finalQuery = '';
        //System.debug(fieldNames);
        for(String i : fieldNames){
            //System.debug(i);
         	strQuery = strQuery + i + ',';
            //System.debug(strQuery);
        }
        
        //System.debug(strQuery);
        strQuery = strQuery.replaceAll(',$','');
        finalQuery = 'SELECT ' + strQuery + ' FROM ' + objName + ' LIMIT 20';
        //System.debug(finalQuery);
        return database.query(finalQuery);
        
    }
}