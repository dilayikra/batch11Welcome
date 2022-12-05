public with sharing class Dog {

    public String name;
    public String color;
    public Integer age;
    public Static Integer count=0;

    public Dog() {
        count++;
        age=1;
    }
    public void checkAge(){
        if (age>0 && age<=1) {
            System.debug('Puppy Dog');
            
        } else if (age>1 && age<=3) {
            System.debug('Young Dog');
        }else if (age>3 && age<=5) {
            System.debug('Adult  Dog');            
        } else if (age>5) {
            System.debug('Old Dog');
            
        }
    }
    
    public void showDogCount(){
        System.debug('total number of dogs=' + count);

    }
    public Dog(String x,String y,Integer z){
        count++;
        name=x;
        color=x;
        age=z;
    }


}
