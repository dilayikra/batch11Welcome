public  class AccountHandler_assg {
    
    public static void createcontact (LIST<Account> newacc, LIST< Account > oldacc,MAP<ID, Account > newMap,MAP<ID, Account > oldMap) {
      List<contact> conList=new List<contact>();
      for (account acc :newacc ) {
        contact cnt=new contact();
        cnt.lastName=acc.name;
        cnt.accountid=acc.id;
        conList.add(cnt);

        
      }
      insert conList;

        
    }
    
}
