public class AccountUtility {
    public static void viewAnnualRevenue(){
        list<Account> accountsList=[SELECT Name,AnnualRevenue from Account];
        for(Account act:accountsList){
           String acctRev=act.Name+':'+act.AnnualRevenue;
            system.debug(acctRev); 
                      
        }
        
    }
    
}