public with sharing class ActionFunctionDemoController {
	
    public Cat3__c cat {get; set;}
    public String message {get; set;}
    
    public ActionFunctionDemoController(){
        
        cat = new Cat3__c(name='Some Value',Cat2__c='a0B70000002PuK2EAK');
        message = 'Try again!!';
    }
    
    public pageReference save(){
        
        try{
            insert cat;
            message = 'Insert Successful! -- '+ cat.id;
        }
        catch (Exception e) {
            ApexPages.addMessages(e);
            message = 'Whoops! An error occurred -- '+ e.getMessage();
        }
        return null;
    }
}