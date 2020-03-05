public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String match){
        List<List<sObject>> contactLead = [FIND :match IN ALL FIELDS RETURNING Contact(FirstName,LastName),Lead(FirstName,LastName)];
		return contactLead;    
    }
}