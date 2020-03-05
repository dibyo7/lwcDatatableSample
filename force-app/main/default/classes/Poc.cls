public with sharing class Poc {
    @AuraEnabled(cacheable = true)
    public static List<Contact> getContacts(){
        List<Contact> contacts = 
            [SELECT Id, Name, Phone, Email, AccountId FROM Contact where Phone != null limit 50];
        return contacts;                
    }
}