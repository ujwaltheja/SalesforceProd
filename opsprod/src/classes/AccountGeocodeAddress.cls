public class AccountGeocodeAddress {
	// static variable to determine if geocodinghas already occurred
    private static Boolean geocodingCalled = false;
    // wrapper method to prevent calling future methods from an existing future context
    public static void DoAddressGeocode(id accountId) {
      if
    (geocodingCalled || System.isFuture()) {
        System.debug(LoggingLevel.WARN,'***Address Geocoding Future Method Already Called - Aborting...');
        return;
      }
      // if not being called from future context, geocode the address
      geocodingCalled = true;
      geocodeAddress(accountId);
    }
        // we need a future method to call Google Geocoding API from Salesforce
    @future (callout=true)
    static private void geocodeAddress(id accountId)
    { 
      // Key for Google Maps Geocoding API
      String geocodingKey = 'AIzaSyD99Qme19tqrGSYJiU6edxah-7wrSUffnY';
      // get the passed in address
      Account geoAccount = [SELECT BillingStreet, BillingCity, BillingState, BillingCountry,BillingPostalCode FROM Account WHERE id = :accountId];
        
      //check that we have enough information to geocode the address
      if((geoAccount.BillingStreet == null) || (geoAccount.BillingCity == null)) {
        System.debug(LoggingLevel.WARN,'Insufficient Data to Geocode Address');
        return;
      }
      //create a string for the address to pass to Google Geocoding API
      String geoAddress = '';
      if(geoAccount.BillingStreet != null)
        geoAddress+= geoAccount.BillingStreet + ', ';
      if(geoAccount.BillingCity != null)
        geoAddress+= geoAccount.BillingCity + ', ';
      if(geoAccount.BillingState != null)
        geoAddress+= geoAccount.BillingState + ', ';
      if(geoAccount.BillingCountry != null)
        geoAddress+= geoAccount.BillingCountry + ', ';
      if(geoAccount.BillingPostalCode != null)
        geoAddress+= geoAccount.BillingPostalCode;
      
      //encode the string so we can pass it as part of URL
      geoAddress= EncodingUtil.urlEncode(geoAddress, 'UTF-8');
      //build and make the callout to the Geocoding API
      Http http = new Http();
      HttpRequest request = new HttpRequest();
        //https://geocoder.api.here.com/6.2/geocode.xml?app_id={YOUR_APP_ID}&app_code={YOUR_APP_CODE}&searchtext=425+W+Randolph+Chicago
       // https://geocoder.api.here.com/6.2/geocode.json?searchtext='+geoAddress+'&app_id=7j1reaxRvR9EH3MyZbgs&app_code=_rUgjj_n8Z9v3yofciRVUg&gen=9
      request.setEndpoint('https://geocoder.api.here.com/6.2/geocode.json?app_id=7j1reaxRvR9EH3MyZbgs&app_code=_rUgjj_n8Z9v3yofciRVUg&searchtext='+geoAddress);
      request.setMethod('GET');
      request.setHeader('Content-Type', 'application/json');
	  request.setHeader('Accept','application/json');
      request.setTimeout(60000);
      
        //make the http callout
        HttpResponse response = http.send(request);
        //parse JSON to extract co-ordinates
        JSONParser responseParser = JSON.createParser(response.getBody());
        //initialize co-ordinates
        decimal latitude = null;
        decimal longitude = null;
        while(responseParser.nextToken() != null) {
          if((responseParser.getCurrentToken() == JSONToken.FIELD_NAME) &&(responseParser.getText()== 'location')) {
            responseParser.nextToken();
            while(responseParser.nextToken() != JSONToken.END_OBJECT) {
             
            String locationText = responseParser.getText();
                     
            responseParser.nextToken();
             
            if (locationText == 'latitude')
                       
            latitude = responseParser.getDecimalValue();
                     
            else if (locationText == 'longitude')
                       
            longitude = responseParser.getDecimalValue();
                System.debug('long'+longitude);
            }
          }
        }
        //update co-ordinates on address if we get them back
        if(latitude != null) {
          geoAccount.GeoLocation__Latitude__s= latitude;
          geoAccount.GeoLocation__Longitude__s = longitude;
          update geoAccount;
        }
       
    }
}