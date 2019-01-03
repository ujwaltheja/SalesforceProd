public with sharing class AccountSearch {
    String searchText;
    List<Account> results;
    
    public String getSearchText() {
      return searchText;
   }

   public void setSearchText(String searchText) {
      this.searchText = searchText;
   }
   
   public List<Account> getResults() {
         return results;
      
   }
   // the payment states
    public List<String> states=new List<String>{
      'Connecting to Bank', 'Authorising', 
      'Authorised', 'Complete'};
    
    // the index of the current state
    private Integer stateIdx=0;
    
    // getter to retrieve the current state
    public String getPaymentState()
    {
       return states[stateIdx];
    }
        
    // action method invoked by the poller - increments the 
    // current state index
   

   public PageReference searchTo() {
      //results = (List<Account>)[FIND :searchText RETURNING Account(Name, Phone)][0];
      String sText='%'+searchText+'%';
      results = [Select Name, Phone from Account where Name like :sText];
      return null;
   }
    public PageReference movePayment() 
    {
        stateIdx++;
        return null;
    }
   public PageReference Reset(){
       PageReference pg=new PageReference(System.currentPageReference().getUrl());
       pg.setRedirect(true);
       return pg;
   }



}