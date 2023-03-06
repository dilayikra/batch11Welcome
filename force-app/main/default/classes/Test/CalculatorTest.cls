@isTest
public  class CalculatorTest {
    @isTest
    private static void testMessages() {
        Calculater.welcomeMessage();
        calculater.printNewMessage('This is from test method.');

        
    }

    @isTest
    private static void addTest1() {
        
        integer i=10;
        integer j=15;
        integer sum1=Calculater.add(i,j);
        system.assertEquals(25, sum1);
        
    }
    
}
