public with sharing class apexControllerLwc {
    @AuraEnabled(cacheable=true)
    public static List<Account> accList(){
        List<Account> acc=[Select Id,Name from Account limit 10];
        return acc;
    }
    @AuraEnabled(cacheable=true)
    public static List<Contact> conlist(){
       
        List<Contact> con=[Select Id,LastName from Contact limit 5];
        
        return con;
    }
    
}