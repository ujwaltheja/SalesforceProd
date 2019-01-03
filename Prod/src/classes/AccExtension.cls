public with sharing class AccExtension {

Account acc;

public Contact con{get;set;}

public AccExtension(ApexPages.StandardController controller) {
    this.acc= (Account)controller.getRecord();
    con = new contact();
}

public PageReference save() {
    update acc;
    con.accountId= acc.Id;
    insert con;
    return null;
}
}