public class AccountHandler {
    public static Account insertNewAccount(String name)
    {	
        //List<Account> accnt = new List<Account>{new Account(Name = name)};
   		Account accnt = new Account(Name = name);
        try
        {
            insert accnt;
            return accnt;
        }
        catch(DmlException e)
        {
            return null;
        }        
       
    }

}