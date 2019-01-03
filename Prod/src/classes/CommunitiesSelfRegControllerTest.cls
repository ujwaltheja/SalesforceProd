/**
 * An apex page controller that supports self registration of users in communities that allow self registration
 */
@IsTest public with sharing class CommunitiesSelfRegControllerTest {
    @IsTest(SeeAllData=true) 
    public static void testCommunitiesSelfRegController() {
        list<String> pref = new list<String> {'Mail','Phone'};
        PageReference pageRef = Page.CommunitiesSelfReg;
        pageRef.getParameters().put('expid','test');
        pageRef.getParameters().put('startURL','test');
        Test.setCurrentPage(pageRef);
        CommunitiesSelfRegController controller = new CommunitiesSelfRegController();
        controller.firstName = 'FirstName';
        controller.lastName = 'LastName';
        controller.Email = 'test@force.com';
        controller.phone = '123456789';
        controller.SelectedPreferences = pref ;
        //controller.communityNickname = 'test';
        
		controller.street = 'street';
        controller.city = 'city';
        controller.state = 'state';
        controller.postalCode = 'postalCode';
        controller.TestCountry1 = 'TestCountry1';
              

        // registerUser will always return null when the page isn't accessed as a guest user
        System.assert(controller.registerUser() == null);    
        
        controller.password = 'abcd1234';
        controller.confirmPassword = 'abcd123';
        System.assert(controller.registerUser() == null);  
        //controller.registerUser();
    }    
}