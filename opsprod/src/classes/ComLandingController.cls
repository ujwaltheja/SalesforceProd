public with sharing class ComLandingController {

  // Code we will invoke on page load.

   public PageReference forwardToStartPage() {

   return Network.communitiesLanding();

   }

    public ComLandingController() {}

   public PageReference RedirectToLandingPage()  

   {

   return  new PageReference('/apex/NeedSupport');

   }

   }