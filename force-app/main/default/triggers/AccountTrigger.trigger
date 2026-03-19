trigger AccountTrigger on Account (before insert, after insert, before update, after update) {

    // BEFORE INSERT
    if(Trigger.isBefore && Trigger.isInsert){
       // AccountTriggerHandler.UpdateDec(Trigger.new);
      //  AccountTriggerHandler.UpdateRating(Trigger.new);
       // AccountTriggerHandler.BillingToShipping(Trigger.new);
       // AccountTriggerHandler.PopulateRating(Trigger.new, null);
    }

    // AFTER INSERT
    if(Trigger.isAfter && Trigger.isInsert){
       // AccountTriggerHandler.CreateOpp(Trigger.new);
       // AccountTriggerHandler.CreateContact(Trigger.new);
       // AccountTriggerHandler.CreateOpportunityContact(Trigger.new);
            
       
    }

    // BEFORE UPDATE
    if(Trigger.isBefore && Trigger.isUpdate){
        //AccountTriggerHandler.UpdatePhone(Trigger.new, Trigger.oldMap);
       // AccountTriggerHandler.ModifiedAccountName(Trigger.new, Trigger.oldMap);
        //AccountTriggerHandler.PopulateRating(Trigger.new, Trigger.oldMap);
    }

    // AFTER UPDATE
    if(Trigger.isAfter && Trigger.isUpdate){
     //  AccountTriggerHandler.UpdateRelatedBillingAddress(Trigger.new, Trigger.oldMap);
       // AccountTriggerHandler.CreateContactonUpdateAccount(Trigger.new, Trigger.oldMap);
       // AccountTriggerHandler.UpdatePhoneRelatedContact(Trigger.new, Trigger.oldMap);
           AccountTriggerHandler.RelatedAccountPhone(Trigger.new,Trigger.oldMap);
    }
}