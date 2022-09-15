@RestResource(urlMapping='/getAccounts/')
global class RestExampleExt {
    @HTTPPost
    global static List<Account> getAllAccounts(){
        
        List<Account> accountData=[SELECT Id, Name, AccountNumber, Phone FROM Account];
        
        return accountData;
    }

}