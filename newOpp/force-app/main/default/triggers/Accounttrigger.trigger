trigger Accounttrigger on Account (before insert, before update) {
    if(Trigger.isInsert && Trigger.isBefore ){
        for(Account acc:Trigger.new){
             acc.Description= acc.Name +' is inserted by '+UserInfo.getName();
            
        }
        
    }
    if(Trigger.isUpdate && Trigger.isBefore ){
        for(Account acc:Trigger.new){
             acc.Description= acc.Name +' is updated by '+UserInfo.getName();
            
        }
        
    }
}