public with sharing class redirect {

    public redirect(ApexPages.StandardController controller) {

    }
    public pagereference redirect()
    {
     If(ApexPages.currentPage().getParameters().get('RecordType') != '0000000000000000')
     {     
           
           String hostname = ApexPages.currentPage().getHeaders().get('Host'); 
           String leadURL2 = 'https://'+hostname+'/'+'/lead/leadconvert.jsp?';
           pagereference pageref = new pagereference(leadURL2);
           pageref.setredirect(true);
           return pageref;
     }
     else
          return null;
}

}