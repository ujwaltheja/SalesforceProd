@isTest
public class EmailHandlerTest {
	  static testMethod void myTestMethod() {

   // Create a new email, envelope object and Attachment
   Messaging.InboundEmail email = new Messaging.InboundEmail();
   Messaging.InboundEnvelope env = new Messaging.InboundEnvelope();

   email.subject = 'Improve performance on the new Formular 1 racecar';
   env.fromAddress = 'ujwaltheja@gmail.com';
   email.fromAddress = env.fromAddress; // Without this you will get a de-reference null object error

   // call the class and test it with the data in the testMethod
   EmailHandler emailobj = new EmailHandler();
   emailobj.handleInboundEmail(email, env );                      
  }   
}