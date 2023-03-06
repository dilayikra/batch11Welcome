public  class ContactQueueableExample implements Queueable {
    public List<account> accountList;
    
    public ContactQueueableExample(List<account> acc){
        accountList=acc;
    }

    public void execute(QueueableContext qc){
            List<Contact> conList=new  List<Contact>();
            for(account eachacc :accountList ){
                contact c=new contact();
                c.Accountid=eachacc.Id;
                c.lastname +='Contact Test';
                c.description='Updated Contact';
                conList.add(c);
                }
             insert conList;
            
            

        }
         
            
        




    }
    

