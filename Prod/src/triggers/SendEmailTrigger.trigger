trigger SendEmailTrigger on Contact (after insert, after delete) {
   
    //After Insert
    if (Trigger.isInsert && Trigger.isAfter) {
         Contact c =[Select id,email from contact where id =: Trigger.New];
        Integer recordCount = Trigger.new.size();
        //If(c.email != NULL){
        try{
        //call utility method
        	EmailManager.sendMail(c.email, 'My Contacts updated',
                                   recordCount + 'Contacts were updated');
        }
        Catch(Exception e){
            System.debug('Email Id is empty');
            for(Contact con: Trigger.New){
                con.addError('Please enter Email id');
                System.debug('Null Email Id'+e.getMessage());
            }
        }
    }
    //After Delete
    else if(Trigger.isDelete && Trigger.isAfter) {
        //Contact c =[Select id,email from contact where id =: Trigger.old];
       
        Integer recordCount = Trigger.old.size();
        //If(c.email != NULL){
        	EmailManager.sendMail('ujwaltheja@gmail.com', 'My Contacts updated',
                                   recordCount + 'Contacts were deleted');
        //}
       /* else{
           System.debug('Email id is empty');        
            for(Contact con: Trigger.old){
             	   con.addError('Please update email id');
                   System.debug('Email Id should be required for deleting');
            }
            }*/
        }
    
}