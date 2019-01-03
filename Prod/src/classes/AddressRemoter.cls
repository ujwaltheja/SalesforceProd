global with sharing class AddressRemoter {

    @RemoteAction
    global static List<Account> findAll() {
        return [SELECT Name, Id, Location__Latitude__s, Location__Longitude__s FROM Account];
    }

}