global with sharing class ComLoginController {

 public String password { get; set; }

 public String username { get; set; }

 global ComLoginController () {}

 global PageReference forwardToAuthPage() {

 String startUrl = System.currentPageReference().getParameters().get('startURL');

 String displayType = System.currentPageReference().getParameters().get('display');

 return Network.forwardToAuthPage(startUrl, displayType);

 }

 global PageReference RedirectToLogin()

 {

 return new PageReference( '/home');

 /* 'StudentLogin' is the name of the VF Page for login that is created below */

 }

 public PageReference loginUser()

 {

 return Site.login(username, password,'/NeedSupport');

 /* 'NeedSupport'  is the Page to which we will be redirected after Login */

 }

 }