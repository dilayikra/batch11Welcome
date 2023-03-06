public  class DML2_Assgn {
    public static void insert_dml() {
        account acc=new account();
        acc.Name='Dilay';
        insert acc;

        account acc2=new account();
        acc2.Name='Ikra';
        insert acc2;

        account acc3=new account();
        acc3.Name='Assigment';
        insert acc3;
        
    }

    public static void updating_dml() {

        account acc=new account();
        acc.Name='Account Created';
        insert acc;

        acc.Name='Account Updated';
        update acc;
    }

    public static void createBulkContacts() {
        List<contact> conList = new List<contact>();
        contact con1=new contact();
        con1.firstName='Mark';
        con1.lastName='Ruffalo';
        conList.add(con1);

        contact con2=new contact();
        con2.firstName='Mark';
        con2.lastName='Ruffalo';
        conList.add(con2);

        contact con3=new contact();
        con3.firstName='Chris';
        con3.lastName='Hemsworth';
        conList.add(con3);

        contact con4=new contact();
        con4.firstName='Scarlett';
        con4.lastName='Johansson';
        conList.add(con4);

        contact con5=new contact();
        con5.firstName='Scarlett';
        con5.lastName='Johansson';
        conList.add(con5);

        insert conList;
    }
    public static List<contact> searchForContacts(String x) {
        List<contact> conList2 = [select id,name from contact where lastname= :x];
        System.debug('Selected last name is ' + conList2);
        return conList2;


        
    }
}
