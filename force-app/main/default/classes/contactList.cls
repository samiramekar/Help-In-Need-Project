public with sharing class contactList {
    @AuraEnabled(cacheable=true)
    public static List<Contact> m1(){
        List<Contact> con=[Select Id,LastName from Contact where LastName LIKE: 'Con%' limit 10];
        return con;
    }
}