public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numOfContacts, String Lname){
        
        List<Contact> randomContact = new List<Contact>();
        
        for(Integer i = 0; i < numOfContacts; i++){
            Contact c = new Contact(FirstName = 'Test' + i, LastName = Lname);
            randomContact.add(c);
        }
        return randomContact;
    }

}