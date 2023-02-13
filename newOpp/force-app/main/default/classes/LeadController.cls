public without sharing class LeadController {
    public Lead leadrec {get;set;}
    public Boolean recordSave {get;set;}
   
    
    public LeadController(){
        leadrec = New Lead();
        recordSave =null;
        
    }
    
     public void SaveLead() {
    
         leadrec.company='Info Session Records';
     
         System.debug(leadrec);
     
         try{
             insert leadrec;
                 ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.INFO,'We reveice your request and contact with you as soon as possible....');
                ApexPages.addMessage(myMsg);
              leadrec=null;
              
         } catch(Exception e){
             ApexPages.addMessages(e);
         }
         
         
         
      
    }

 

}