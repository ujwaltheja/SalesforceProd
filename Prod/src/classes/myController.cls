public with sharing class myController {
    private final Id accountId;
    private final account Account;
    transient public final String accountName {get; set; }
    public myController() {
        try{
            Account account = [select Id, Name from Account where id=:ApexPages.currentPage().getParameters().get('id')];
            accountId = account.Id;
            accountName = account.Name;
            }
            catch(Exception e)
            {
               account = new Account();
            }
    }
    public PageReference save() {
        Account myAccount = [select name from Account where id=:accountId];
            if(myAccount!=Null){
            myAccount.name = accountName;
            update myAccount;
            }
        else
            insert account;
        return null;
}
}