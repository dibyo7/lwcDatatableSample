@isTest
public class TestRestrictContactByName {
    @isTest static void invalidContact(){
        List<Contact> cont = new List<Contact>();
        Contact c1 = new Contact(FirstName = 'Something1', LastName = 'ValidName', email = 'test1@test.com');
        Contact c2 = new Contact(FirstName = 'Something2', LastName = 'INVALIDNAME', email = 'test1@test.com');
        cont.add(c1);
        cont.add(c2);
        Test.startTest();
            try{
                insert cont;
            }
      		catch(Exception ee){}
      	Test.stopTest();
    }
}