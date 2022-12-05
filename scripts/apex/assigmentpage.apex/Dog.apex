System.debug('Start count of dogs= '+ Dog.count);
Dog d1=new Dog();
d1.name='Bruno';
d1.color='Black';
d1.age=6;
System.debug(d1);
d1.checkAge();
d1.showDogCount();




Dog d2=new Dog('Mojo','Brown',2);
System.debug(d2);
d2.checkAge();
d2.showDogCount();


System.debug('End count of dogs= '+ Dog.count);



