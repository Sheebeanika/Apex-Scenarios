trigger CaseTrigger on Case (before insert) {

    if(Trigger.isInsert){
        if(Trigger.isBefore){
            
        }else if(Trigger.isAfter){
           CaseTriggerhandler.LatestCaseNumberUpdate(trigger.new); 
        }
    }
    
    
}