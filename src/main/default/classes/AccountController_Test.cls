@isTest
public class AccountController_Test 
{            
    @TestSetup
    static void makeData(){
        Account acc = new Account(Name = 'Pluto', Active__c = 'Yes');  
        insert acc;  
    }
    @isTest static void getAllActiveAccountsTest()
    {
        Test.startTest();
        List<Account> accs = AccountController.getAllActiveAccounts();
        System.assertEquals(1,accs.size(),'1 account records should be returned');
        Test.stopTest();
    }
}