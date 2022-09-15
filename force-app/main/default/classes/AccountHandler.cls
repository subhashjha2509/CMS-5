public class AccountHandler {

     public static void insertAccount(Integer num) {

         Integer counter = 1;

         List<Account> addAccounts = new List<Account>();

         while(counter <= num) {

             Account a = new Account();

             a.Name = 'Acme Inc ' + counter;

             a.AccountNumber = 'A000' + counter;

             addAccounts.add(a);

             counter = counter + 1;

         }

         insert addAccounts;

     }

 }