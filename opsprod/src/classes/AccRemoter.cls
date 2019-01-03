global with sharing class AccRemoter {

    @RemoteAction
    global static List<Account> findAll() {
        return [SELECT Id, Name, BillingPostalcode FROM Account];
    }

}