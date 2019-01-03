public class TransactSearchController {
	// the soql without the order and limit
  private String soql {get;set;}
  // the collection of contacts to display
  public List<Transaction__c> transactions {get;set;}

  // the current sort direction. defaults to asc
  public String sortDir {
    get  { if (sortDir == null) {  sortDir = 'asc'; } return sortDir;  }
    set;
  }

  // the current field to sort by. defaults to last name
  public String sortField {
    get  { if (sortField == null) {sortField = 'Account_Number__c'; } return sortField;  }
    set;
  }

  // format the soql for display on the visualforce page
  public String debugSoql {
    get { return soql + ' order by ' + sortField + ' ' + sortDir + ' limit 20'; }
    set;
  }

  // init the controller and display some sample data when the page loads
  public TransactSearchController() {
    //soql = 'SELECT Id,Name, Account_Number__c, Transaction_Type__c, Credit_Debit__c, DateTimeStamp__c FROM Transaction__c where Account_NUmber__c != null';
    runQuery();
  }

  // toggles the sorting of query from asc<-->desc
  public void toggleSort() {
    // simply toggle the direction
    sortDir = sortDir.equals('asc') ? 'desc' : 'asc';
    // run the query again
    runQuery();
  }

  // runs the actual query
  public void runQuery() {

    try {
      transactions = Database.query(soql + ' order by ' + sortField + ' ' + sortDir + ' limit 20');
    } catch (Exception e) {
      ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR, 'Ooops!'));
    }

  }

  // runs the search with parameters passed via Javascript
  public PageReference runSearch() {

    String AccountNumber = Apexpages.currentPage().getParameters().get('AccountNumber');
    //String lastName = Apexpages.currentPage().getParameters().get('lastname');
    //String accountName = Apexpages.currentPage().getParameters().get('accountName');
    //String technology = Apexpages.currentPage().getParameters().get('technology');

    soql = 'SELECT Id,Name, Account_Number__c, Transaction_Type__c, Credit_Debit__c, DateTimeStamp__c FROM Transaction__c where Account_NUmber__c != null';
    if (!AccountNumber.equals(''))
      soql += ' and Account_Number__c LIKE \''+String.escapeSingleQuotes(AccountNumber)+'%\'';
    /*if (!lastName.equals(''))
      soql += ' and lastname LIKE \''+String.escapeSingleQuotes(lastName)+'%\'';
    if (!accountName.equals(''))
      soql += ' and account.name LIKE \''+String.escapeSingleQuotes(accountName)+'%\'';  
    if (!technology.equals(''))
      soql += ' and interested_technologies__c includes (\''+technology+'\')';*/

    // run the query again
    runQuery();

    return null;
  }

  // use apex describe to build the picklist values
  /*public List<String> technologies {
    get {
      if (technologies == null) {

        technologies = new List<String>();
        Schema.DescribeFieldResult field = Contact.interested_technologies__c.getDescribe();

        for (Schema.PicklistEntry f : field.getPicklistValues())
          technologies.add(f.getLabel());

      }
      return technologies;          
    }
    set;
  }*/

}