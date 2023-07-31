/**
  * @author       Diego Magrì
  * @date         14/07/2023
  * @description  Account controller
*/
public without sharing class AccountController {
  /**
  * @author       Diego Magrì
  * @date         14/07/2023
  * @description  gets list of account obj
  * @return       list of accounts
  */
    public static List<Account> getAllActiveAccounts() {
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    } 
  }