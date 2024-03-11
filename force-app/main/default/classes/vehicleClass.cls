public with sharing class vehicleClass {
    @AuraEnabled
    public static Vehicle_Services__c vehlist(Vehicle_Services__c veh){
        
        insert veh;
        return veh;
    }
}