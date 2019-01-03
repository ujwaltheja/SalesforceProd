Global class EmailHandler implements Messaging.inboundEmailHandler{

 Global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,  Messaging.InboundEnvelope env ) {
 
 Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
 
     if(env.fromAddress == 'ujwaltheja@gmail.com'){
         String toEmail = env.fromAddress;
         sendEmail(toEmail);
     }
    
 // Set the result to true, no need to send an email back to the user
 // with an error message
 result.success = true;
 // Return the result for the Apex Email Service
 return result;
}
public static void sendEmail(String s) {

 // Send an email back to the from email address of who created the idea
 String[] toAddresses = new String[] {s};

 // new instance of a single email message
 Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

   mail.setToAddresses(toAddresses);
   mail.setReplyTo('ujwaltheja@gmail.com');
   mail.setSenderDisplayName('Salesforce Test!');
   mail.setSubject('My Subject');
   mail.setBccSender(false);
   mail.setUseSignature(false);
   mail.setPlainTextBody('Plain Text');
 // Send the email
 Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

}  
}