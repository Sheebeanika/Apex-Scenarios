trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {

    // BEFORE INSERT
    if(Trigger.isBefore && Trigger.isInsert){
        OpportunityTriggerHandler.UpdateDescription(Trigger.new, null);
        OpportunityTriggerHandler.SetDescription(Trigger.new);
    }

    // AFTER INSERT
    if(Trigger.isAfter && Trigger.isInsert){
        OpportunityTriggerHandler.PopulateOppAmount(Trigger.new);
         OpportunityTriggerHandler.UpdateAccountType(Trigger.new);
         OpportunityTriggerHandler.UpdateLastOppDate(Trigger.new);
        OpportunityTriggerHandler.UpdateActive(Trigger.new);
        
    }

    // BEFORE UPDATE
    if(Trigger.isBefore && Trigger.isUpdate){
        OpportunityTriggerHandler.UpdateDescription(Trigger.new, Trigger.oldMap);
    }

    // AFTER UPDATE
    if(Trigger.isAfter && Trigger.isUpdate){
        OpportunityTriggerHandler.PopulateOppAmount(Trigger.new);
       
    }
}