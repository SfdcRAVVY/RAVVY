Trigger Populatevalues on Busines__c(Before insert,before update){
    Id LRecordTypeId = Schema.SObjectType.Busines__c.getRecordTypeInfosByName().get('Laptop').getRecordTypeId();
    Id LpRecordTypeId = Schema.SObjectType.Busines__c.getRecordTypeInfosByName().get('Mobile').getRecordTypeId();
    for(Busines__c b:trigger.new){
        //system.debug("trigger.new====="+trigger.new);
        if(b.RecordTypeId==LRecordTypeId && b.Laptop__C == 'Dell' && b.Laptop_Cost__c==null){
            b.addError('Please enter the Laptop cost');
        }
        else if(b.RecordTypeId==LRecordTypeId && b.Laptop__C == 'Dell'){
            b.Branch__c='Hyd';
        }
       //}
    //for(Busines__c b:trigger.new){
        else if(b.RecordTypeId==LpRecordTypeId && b.Mobile__c == 'Redmi' && b.Mobile_Cost__c==null){
            b.addError('Please enter the Mobile cost');
        }
        else if(b.RecordTypeId==LpRecordTypeId && b.Mobile__C == 'Redmi'){
            b.Branch__c='Hyd';
        }
    }
}