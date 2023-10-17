Trigger Populate on Case(before insert){
    set<id> setofid= new set<id>();
    for(Case c:trigger.new){
        if(c.Teamsale__c!=null){
            setofid.add(c.Teamsale__c);
        }
    }
    list<Teamsales__c> listofteamsales= [select id,Ts1__c,Ts2__c,Ts3__c from TeamSales__c where Id in:setofid];
    map<id,Teamsales__c> mapofsalesteam= new map<id,Teamsales__c>();
    for (Teamsales__c st:listofteamsales){
        mapofsalesteam.put(st.id,st);
    }
    for(Case c1:trigger.new){
        if(mapofsalesteam.containskey(c1.Teamsale__c)){
            Teamsales__c t=mapofsalesteam.get(c1.Teamsale__c);
            c1.Cs1__c=t.Ts1__c;
            c1.Cs2__C=t.Ts2__c;
            c1.Cs3__c=t.Ts3__c;
        }
        
    }
}