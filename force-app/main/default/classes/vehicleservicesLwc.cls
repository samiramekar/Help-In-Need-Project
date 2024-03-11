public with sharing class vehicleservicesLwc {
    @AuraEnabled
    public static Vehicle_Services__c vehList(String locn,String cat,String ty,String vnm,String desp){
        List<Vehicle_Services__c> veh=new List<Vehicle_Services__c>();
        Vehicle_Services__c vehL=new Vehicle_Services__c();
        vehL.Tell_us_your_location__c=locn;
        vehL.Service_Category__c=cat;
        vehL.Select_Vehicle_Type__c=ty;
        vehL.Vehicle_Name__c=vnm;
        vehL.Description__c=desp;
        veh.add(vehL);
        insert veh;
        return vehL;
        
    }
}