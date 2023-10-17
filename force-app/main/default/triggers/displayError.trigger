trigger displayError on College__c (before insert) {
    for(College__C c:trigger.new){
        if(c.CollegeState__c=='IND1' && c.Department__c=='ECE'){
            c.addError('Please Enter the Library');
        }
    }

}