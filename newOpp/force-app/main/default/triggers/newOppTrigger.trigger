trigger newOppTrigger on Opportunity (before insert) {
    for(Opportunity opp:Trigger.new){
        if(opp.Type==null || opp.Type==''){
         Opp.Type='New Customer';
        }
    }
    

}