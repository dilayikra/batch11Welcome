global class Calculater {
    global void welcomeMessage(){
        system.debug('Welcome to apex calc');
    }

    public void printNewMessage(String msg){
        system.debug(msg);
    }

    //return string
    public string printAndReturnMessage(String msg){
        string tempStr=msg+ ' okey cool';
        return tempStr;


    }

    public integer add(integer a,integer b){

        integer sum=a+b;
        return sum;      
    } 

    public integer add(integer x,integer y,integer z ){
        integer sum=x+y+z;
        return sum;
    } 

    public boolean leapYearCheck(date dt){
        integer year=dt.year();
        boolean lp=date.isLeapYear(year);
        return lp;
    }

    




}
