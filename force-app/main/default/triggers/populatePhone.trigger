trigger populatePhone on contact(Before insert){
    for(Contact c:trigger.new){
        if(c.AccountId!=null){
            Account a= [select Phone from Account where Id=:c.AccountId];
            c.Phone=a.Phone;
        }
    }

}