public with sharing class AccountController {
    public AccountController() {

    }

    @AuraEnabled
    public static List<Account> getAllAccounts(){
        List<Account> accountList= [SELECT Id, Name, BillingCity, Phone FROM Account];
        return accountList;
    }
}
