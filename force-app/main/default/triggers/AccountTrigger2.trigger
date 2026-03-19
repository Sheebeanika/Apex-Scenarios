trigger AccountTrigger2 on Account (before insert,After insert,before update,after Update) {

    if(Trigger.isBefore && Trigger.isinsert){
       AccountTriggerHandler1.AnnualRevenue(Trigger.new);
    }
    
      if(Trigger.isAfter && Trigger.isinsert){
        AccountTriggerHandler1.ContactWithDefaultName(Trigger.new);
      }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        AccountTriggerHandler1.populateRating(Trigger.new, Trigger.oldMap);
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        
    }
    
}