@isTest
public class TestVerifyDate {
    @isTest static void testOldDate(){
        Date dateTest = VerifyDate.CheckDates(date.today(), date.today().addDays(-1));
        System.assertEquals(date.newInstance(2022,7, 31), dateTest);
        
      /*  Date dateTest1 = VerifyDate.CheckDates(date.today(),date.today().addDays(20));
        System.assertEquals(date.today().addDays(20), dateTest1);
        
        Date dateTest2 = VerifyDate.CheckDates(date.today(),date.today().addDays(31));
        System.assertEquals(date.newInstance(2022,7, 31), dateTest2);*/
    }
    
    @isTest static void testLessThan30Days(){
        Date dateTest = VerifyDate.CheckDates(date.today(), date.today().addDays(20));
        System.assertEquals(date.today().addDays(20), dateTest);
    }
    
    @isTest static void testMoreThan30Days(){
        Date dateTest = VerifyDate.CheckDates(date.today(), date.today().addDays(31));
        System.assertEquals(date.newInstance(2022,7, 31), dateTest);
    }
}