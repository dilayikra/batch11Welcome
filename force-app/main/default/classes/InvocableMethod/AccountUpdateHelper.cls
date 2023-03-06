public  class AccountUpdateHelper {
    @InvocableMethod
    //invocable method can call from process builder or Flows
    public static void accountWebsiteUpdate(List<Id> accIds) {
        system.debug('inside invocable method');
        //get all accounts from accids
        List<Account> listAcc=[select id,website,name from account where id in: accIds];
        for (account eachacc : listAcc) {
            eachacc.Website='www.softinnovas.com';
            
        }
        update listAcc;

        
    }
    
}
