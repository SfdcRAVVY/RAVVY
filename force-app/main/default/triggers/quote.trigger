trigger quote on Opportunity (before update) {
    set<Id> ids = new set<Id>();
    for(Opportunity Op:trigger.new){
        if(trigger.oldMap.get(op.id).stageName!=op.stagename && op.stageName!=null &&Op.StageName=='Closed Won'){
            ids.add(Op.Id);
            system.debug('Ids====='+Ids);
        }
    }
    
    list<Quote> Q=[Select Id, Name, Status, OpportunityId from Quote where OpportunityId IN:ids and Status='Draft'];
    system.debug('Q====='+Q);
    if(!Q.isempty()){
    for(Opportunity Op:trigger.new){
        Op.addError('Please check Quote with thikkinava');
    }
    }
}