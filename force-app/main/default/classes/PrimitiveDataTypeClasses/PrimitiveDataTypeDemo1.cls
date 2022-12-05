public  class PrimitiveDataTypeDemo1 {

    public void printBasicDataType(){
        system.debug('print data types');
        string batchName='Batch 11';
        integer totalCandidates=80;
        boolean isAdminCompleted=true;

        system.debug('batch name is '+ batchName);
        system.debug('total candidates are '+ totalCandidates);
        system.debug('is admin completed? ' + isAdminCompleted);

        string batchDescription= batchName + ' is the best';
        system.debug(batchDescription);

        Decimal decValue=27.01;
        system.debug('Decimal ' + decValue);

        Long longValue=131441344L;
        system.debug('Long ' + longValue);
        }

    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object.allowed?';
        Object ob2 =5000;
        Object ob3=false;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        Id accountId='0015h000014QXcyAAG';
        system.debug('Id--> ' + accountId);
    }
    
}

