@isTest
public class AccountRelateRecordUpdateTest{
    static testMethod void insertNewAccount(){
        // Which profile user can run Test Classes
        Profile p = [select id from profile where name='System Administrator'];
        // Fetching present user details
        User u = [Select id, name, email from user where id =: UserInfo.getUserId()and profileId =:p.Id];
        // Starting Test.
        Test.startTest();
        // Assign present user to run the Test Class.
        System.runAs(u){
        
        Account a = new Account();
        
        a.Name = 'Test Account';
        a.Account_Type__c = 'Savings';
        a.Account_Status__c = 'Test';
        
        insert a;
        
        try{
            Delete a;
        }
        catch(Exception ee){
        }
        }
        Test.stopTest();
    }
}