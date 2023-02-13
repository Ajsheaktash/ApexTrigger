trigger updateAccounttrigger on Account (before insert,before update) {
    for(Account acc:Trigger.new){
        if(acc.BillingCountry=='America'|| acc.BillingCountry=='AMERICA'){
            acc.BillingCountry='USA';
        }
        
    }

}