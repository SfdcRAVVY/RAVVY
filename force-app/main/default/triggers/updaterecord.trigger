trigger updaterecord on College__c (before update) {
	for(College__c c1:trigger.new){
		if(trigger.OldMap.get(c1.id).CollegeCountry__c!=c1.CollegeCountry__c && c1.CollegeCountry__c=='IND'){
			c1.CollegeState__c='IND';
		}
	}
}