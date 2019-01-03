trigger AccountRelateRecordUpdate on Account (after insert, after update, before delete) {
    if(Trigger.isInsert && Trigger.isAfter){
        List<Contact> conList = new List<Contact>();
        
        Map<Id, Account> acctsWithCon = new Map<Id, Account>(
                                [Select id, (Select id from Contacts) from Account where Id IN :Trigger.New]);
                                
        for(Account a : Trigger.New){
            System.debug('accounts with Con' + acctsWithCon.get(a.Id).Contacts.size());
            
            If(acctsWithCon.get(a.Id).Contacts.size() == 0){
            
                conList.add(new Contact(LastName = a.Name + 'Contact Default',
                                            Customer_Name__c = 'Test Ignore',
                                            AccountId = a.Id));
            }
        }
        if(conList.size() > 0){
            insert conList;
        }
    }
    else if(Trigger.isDelete && Trigger.isBefore){
        
        for(Account a: [Select Id from Account where Id IN (Select AccountId from Contact) And Id IN: Trigger.old]){
            Trigger.oldMap.get(a.Id).addError('Cannot delete account with related Contacts.');
        }
    }
}