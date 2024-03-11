public with sharing class accountRec {
    @AuraEnabled
    public static Account accList(Account acc){
        insert acc;
        return acc;
    }
}