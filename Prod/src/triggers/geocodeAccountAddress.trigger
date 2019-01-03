trigger geocodeAccountAddress on Account (after insert, after update) {
    
  //bulkify trigger in case of multiple accounts
  for(Account account : trigger.new) {
  
    //check if Billing Address has been updated
    Boolean addressChangedFlag = false;
    if(Trigger.isUpdate) {
      Account oldAccount = Trigger.oldMap.get(account.Id);
      if((account.BillingStreet != oldAccount.BillingStreet) ||(account.BillingCity!= oldAccount.BillingStreet) ||(account.BillingCountry!= oldAccount.BillingCountry) ||(account.BillingPostalCode!= oldAccount.BillingPostalCode)) {
         
      addressChangedFlag = true;
         
        System.debug(LoggingLevel.DEBUG, '***Address changed for - ' +oldAccount.Name);
      }
    }
    // if address is null or has been changed, geocode it
    if((account.GeoLocation__Latitude__s == null) || (addressChangedFlag == true)) {
      System.debug(LoggingLevel.DEBUG,'***Geocoding Account - ' + account.Name);
      AccountGeocodeAddress.DoAddressGeocode(account.id);
    }
  }
}