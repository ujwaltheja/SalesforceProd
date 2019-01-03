public class AccountCreationController {

    @AuraEnabled
    public static Account saveAccount(Account acc){
        insert acc;
        
        return acc;
    }
}