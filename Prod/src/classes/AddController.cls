public with sharing class AddController {
	
    public List<String> privacyRequests    {get;set;}
    public void updateVarA() {
       //rivacyRequests = [SELECT Address__c FROM Case];
    
    list<String> lst=new List<String>();
   // public AddController(){
        
   //lstAddress =[SELECT Address__c FROM Case];
        //lst.addAll(lstAddress.Address__c);
      List<String> getList=new List<String>();
       List<Case> rawPS=[SELECT Id,Address__c FROM Case limit 6];
               for(Case rawP : rawPS){
               lst.add(rawP.Address__c);
               }
       privacyRequests=lst;
    }
    
    
}