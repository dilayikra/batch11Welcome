public  class Cat {

    public string name;
    public string color;

    public Cat(){
        system.debug('Cat constructor called');
    }

    public Cat(String n,string clr){
        name=n;
        color=clr;
        sleeping();
    }
    

    public void sleeping(){
        System.debug(name + ' is kinda sleeping');
    }
    
}
