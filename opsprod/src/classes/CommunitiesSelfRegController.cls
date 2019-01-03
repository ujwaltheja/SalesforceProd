/**
 * An apex page controller that supports self registration of users in communities that allow self registration
 */
public class CommunitiesSelfRegController {

    public String firstName {get; set;}
    public String lastName {get; set;}
    public String email {get; set;}
    //public String userName {get; set;}
    public String password {get; set {password = value == null ? value : value.trim(); } }
    public String confirmPassword {get; set { confirmPassword = value == null ? value : value.trim(); } }
    //public String communityNickname {get; set { communityNickname = value == null ? value : value.trim(); } }
    public List<String> SelectedPreferences {
        get{
            if(SelectedPreferences == NULL){
                
                SelectedPreferences = new List<String>();
            }
            return SelectedPreferences;
        }
        set;}
    
    public String street {get; set;}
    public String city {get; set;}
    public String state {get; set;}
    public String postalCode {get; set;}
    //public List<String> TestCountry {get; set;}
    public String TestCountry1{get;set;}
    public String phone {get; set;}
    //List<String> SelectedPreferences = new List<String>();
    //public list<String> TestCountry{get;set;} 
    /*public List<SelectOption> getTestCountries() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('UK','UK'));
        Options.add(new SelectOption('GB','GB'));
        Options.add(new SelectOption('United Kingdom','United Kingdom'));
        return Options;
    }*/
    public List<SelectOption> getPreferenceOptions() {
        List<SelectOption> Options = new List<SelectOption>();
        Options.add(new SelectOption('Email','Email'));
        Options.add(new SelectOption('Phone','Phone'));
        Options.add(new SelectOption('Postal','Postal'));
        return Options;
    }
    
    public CommunitiesSelfRegController() {
        String expid = ApexPages.currentPage().getParameters().get('expid');            
        if (expId != null) {
            Site.setExperienceId(expId); 
        }    
    }
    
    private boolean isValidPassword() {
        return password == confirmPassword;
    }

    public PageReference registerUser() {
        if(password == '' || password == NULL){
          
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'Please enter Password number'));
        }
           // it's okay if password is null - we'll send the user a random password in that case
        if (!isValidPassword()) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.ERROR, Label.site.passwords_dont_match);
            ApexPages.addMessage(msg);
            return null;
        }    

        Profile profileId = [select id from profile where name='Customer Community Plus User']; // To be filled in by customer.
        String roleEnum = null; // To be filled in by customer.
        Account accountId = [select id from account where name='Test Community']; // To be filled in by customer.
        
       String Preference = '';
        Boolean Start = true;
        if(!SelectedPreferences.isEmpty()) {           
            for(String Str : SelectedPreferences) {
                if(Start) {
                    Preference = Str;
                    Start = false;
                } else {               
                    Preference = Preference + ';' + Str;
                }
            }
        }
        
        /*String coun = '';
        Boolean Start1 = true;
        if(!TestCountry.isEmpty()) {           
            for(String Str : TestCountry) {
                if(Start1) {
                    coun = Str;
                    Start1 = false;
                }
             else {               
                   coun = coun;
                }
            }
        }*/
        
        String userName = email;
         System.debug('Email'+userName);
		String comNickname = lastName+' '+firstName;
 		
        
        User u = new User();
        u.Username = userName;
        u.Email = email;
        u.FirstName = firstName;
        u.LastName = lastName;
        u.CommunityNickname = comNickname;
        u.ProfileId = profileId.Id;
        u.Contact_Preferences__c = Preference;
        u.Street = street;
        u.City = city;
        u.State = state;
        u.PostalCode = postalCode;
        u.Country = TestCountry1;
        u.Phone = phone;
        
        System.debug('Email'+u.Email);
        String userId;

        try {
            userId = Site.createExternalUser(u, accountId.Id, password);
        } catch(Site.ExternalUserCreateException ex) {
            List<String> errors = ex.getDisplayMessages();
            for (String error : errors)  {
                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, error));
            }
            
            // This message is used for debugging. Do not display this in the UI to the end user.
            // It has the information around why the user creation failed.
            System.debug(ex.getMessage());
        }
        
        if (userId != null) { 
            if (password != null && password.length() > 1) {
                return Site.login(userName, password, ApexPages.currentPage().getParameters().get('startURL'));
            }
            else {
                PageReference page = System.Page.CommunitiesSelfRegConfirm;
                page.setRedirect(true);
                return page;
            }
        }
        return null;
    }
}