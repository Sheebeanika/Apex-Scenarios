trigger TaskTrigger on Task (before insert) {

    if(Trigger.isInsert && Trigger.IsBefore){
        
      TaskTriggerHandler.TaskPriorityUpdate(Trigger.new);
        
    }
        
        if(Trigger.isinsert &&  Trigger.isAfter){
            
        }
    }