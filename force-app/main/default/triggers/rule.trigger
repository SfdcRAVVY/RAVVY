trigger rule on Student__c (before insert, before update) {
for(Student__c s:trigger.new){
    if(s.Name=='vv'){
	 s.EmpNo__c='50';
     s.fathername__C='raju';
    }
	}
}