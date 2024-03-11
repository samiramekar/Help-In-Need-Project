public with sharing class searchClass {
    @AuraEnabled(cacheable=true)
    public static List<Account> m1(String key){
        String skey='%'+key+'%';
        List<Account> acclist=[Select Id,Name from Account where Name LIKE :skey limit 10];
        return acclist;
    }
}