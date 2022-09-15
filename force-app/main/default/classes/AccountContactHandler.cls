public class AccountContactHandler {
    public ID CreateContact(ID acid){
        
        //Account acct=new Account();
        Contact ct=new Contact();
        ct.Lastname='Contact2';
        ct.AccountId=acid;
        insert ct;
        ID newContactId=ct.Id;
        return newContactId;
    }
}