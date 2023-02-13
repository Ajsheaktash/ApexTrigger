trigger contactTrigger on Contact (before insert, before update) {
    for(Contact con:Trigger.New){
        if(con.Mailling_Address_is_same_as_other_Adress__c==True){
            con.OtherCountry=con.MailingCountry;
            con.OtherCity=con.MailingCity;
            con.OtherPostalCode=con.MailingPostalCode;
            con.OtherState=con.MailingState;
            con.OtherStreet=con.MailingStreet;
        }
    }

}