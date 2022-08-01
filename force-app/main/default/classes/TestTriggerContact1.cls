@isTest
public with sharing class TestTriggerContact1 {
    @isTest
    public static void TestContact1() {

        Contact c = new Contact(LastName='Test');
        Test.startTest();
        Database.SaveResult  result= Database.insert(c,false);
        Test.stopTest();
        System.assertEquals(result.isSuccess() ,True);
        
    }
    @isTest static void TestConatct2()
    {
        Contact c = new Contact(LastName='INVALIDNAME');
        test.startTest();
        Database.SaveResult result = Database.insert(c,false);
        test.stopTest();
        system.assertEquals('The Last Name "'+c.LastName+'" is not allowed for DML',
        result.getErrors()[0].getMessage());
    }
}
