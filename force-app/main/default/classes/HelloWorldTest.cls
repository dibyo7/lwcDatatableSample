@isTest
public class HelloWorldTest {
    
    @isTest static void updateLead(){
        Lead myLead = new Lead();
        myLead.FirstName = 'Dibyo';
        myLead.LastName = 'Ranjan';
        myLead.Company = 'Ness';
        insert myLead;
        
        myLead.Company = 'Pluralsight';
        update myLead;
    }

}