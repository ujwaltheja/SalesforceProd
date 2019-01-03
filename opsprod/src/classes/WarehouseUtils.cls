global with sharing class WarehouseUtils {
public WarehouseUtils(ApexPages.StandardSetController controller) { }
    // Find warehouses nearest a geolocation
@RemoteAction
global static List<Warehouse__c> findNearbyWarehouses(String lat, String lon) {
// Initialize results to an empty list
List<Warehouse__c> results = new List<Warehouse__c>();
// method implementation goes here
// Return the query results
return(results);
}
}