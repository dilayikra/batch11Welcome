public  class SOQL_Assignment {
    public static void soql_WhereClause() {
      List<contact> lstcontact =[select id,name from contact where name like 'A%'];  
      System.debug(lstcontact);
      System.debug(lstcontact.size());
    }

    public static void soql_FromMethod() {
        List<contact> lstcontact =[select id,lastName,phone from contact order by CreatedDate];
        System.debug(lstcontact);

        for (contact  eachCon: lstcontact) {
            String lastName=eachCon.lastName;
            String phoneNumber=eachCon.phone;

            System.debug(lastName +' ' + phoneNumber);
            
        }

        
    }
    
}
