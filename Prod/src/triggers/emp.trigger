trigger emp on Employee__c (after insert, after update) {
    EmpUtility.createBranch(trigger.new);
}