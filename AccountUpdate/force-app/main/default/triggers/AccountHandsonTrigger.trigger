trigger AccountHandsonTrigger on Account (before insert,before update) {
    //trigger.new coklu veridir
    for(Account a:trigger.new){
        if(trigger.isInsert && trigger.IsBefore){
            a.Type='Prospect';
        }
        if(trigger.isUpdate && trigger.IsBefore){ 
            a.Description='This Account is updated by '+UserInfo.getName(); 
        }
    }
}