@isTest
public class AccountController_Test 
{      
    @TestSetup
    static void makeData(){
        Account acc = new Account(Name = 'Pluto', Active__c = 'Yes');  
        insert acc;   //test 
        // test checkonly
        // test sf project start cmd 4
        // test sf yaml
        // test yaml configuration
        // test yaml configuration - jobid
    } 
    @isTest static void getAllActiveAccountsTest()
    {
        // test secondo utente
        Test.startTest();
        // test
        List<Account> accs = AccountController.getAllActiveAccounts();
        System.assertEquals(1,accs.size(),'1 account records should be returned');
        Test.stopTest();
        //TESTING
    }
}