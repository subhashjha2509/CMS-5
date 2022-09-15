public class PropertyUtility {
    public static void newListedProperties(){
        List<Property__c> newPropList=[Select Name,Broker__r.Email__c,Days_On_Market__c from Property__c where Days_On_Market__c<=30 ];
        
        for(Property__c var:newPropList){
            
            String propEmail=var.name+':'+var.Broker__r.Email__c;
            
            system.debug(propEmail);
        }
    }
}