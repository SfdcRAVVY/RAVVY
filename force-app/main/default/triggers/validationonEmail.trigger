Trigger validationonEmail on Case(before insert){
    for(Case c:trigger.new){
        if (c.Origin =='Email' && c.Subject==null){
            c.addError('Please enter the subject');
        }
    }
    
}