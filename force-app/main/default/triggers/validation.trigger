trigger validation on Student__c (before insert) {
	for(Student__c s:trigger.new){
		if(s.Name=='vvvv'&& s.EmpNo__c=='null'){
			s.adderror('plaese enter the empno');
		}
	}
}