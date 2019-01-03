Public class EmpUtility{
    public static void createBranch(List<Employee__c> listEmployees){
        
        List<Bank_Branch__c> newBranch = new List<Bank_Branch__c>();
        
        for(Employee__c emp: listEmployees){
        
            Bank_Branch__c bnk = new Bank_Branch__c(
            Branch_Phone__c= '1234'
            );
            newBranch.add(bnk);
        }
        insert newBranch;
    }
}