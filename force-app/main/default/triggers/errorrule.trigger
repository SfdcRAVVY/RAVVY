trigger errorrule on lead (before insert) {
 system.debug('Trigger==='+Trigger.new);
 
 for (lead l:Trigger.new){
     if (l.Phone == '123' && l.Fax == Null){
         l.addError('Please enter the Fax');
 }
 }

}