public with sharing class GeoCoderController 
{
        public String accountId {get;set;}
        public String lat {get;set;}
        public String lon {get;set;}
        public Account geoAccount {get;set;}
        public String gmapKey {get;set;}
        
        //Controller Constructer
        public GeoCoderController(ApexPages.standardcontroller std)
        {
                gmapKey = 'AIzaSyD99Qme19tqrGSYJiU6edxah-7wrSUffnY';
                geoAccount = [SELECT Name, Id, BillingStreet, BillingCity, BillingState, BillingPostalCode, Location__Latitude__s, Location__Longitude__s FROM Account where id =: std.getId()];
        }
        
        //Store the Coordinates on the Account
        public void geoCodeResult()
        {
                system.debug('LAT == ' + lat);
                system.debug('LON == ' + lon);
                geoAccount.Location__Latitude__s = Decimal.valueOf(lat);
                geoAccount.Location__Longitude__s = Decimal.valueOf(lon);
                update geoAccount;
        }
        
        
}