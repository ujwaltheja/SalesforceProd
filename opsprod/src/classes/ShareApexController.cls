public with sharing class ShareApexController {
   	
    
	@AuraEnabled
    public static list<PartnerNetworkRecordConnection> getShareDB(ID strOpty) {
        return[SELECT Id, Status, StartDate FROM PartnerNetworkRecordConnection where LocalRecordId= :strOpty];
    }
}