trigger UpdatePhoneCont on Account (before update) {
    list<contact> c=new list<contact>();
    for(account a:trigger.new){
        if(a.Phone!=null){
            
        }
    }
}