public  class Collections {
    public static String listaAssignment(Integer x) {
        List<String> LstMonth=new List<String>();
        String output_month='';
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        integer monthSize=LstMonth.size();

        
        if (x>LstMonth.size() || x<0) {
            System.debug('Not a valid month');
            
        } 
        return output_month=LstMonth[x-1];




        
    }
    
}
