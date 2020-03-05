trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> newTask = new List<Task>();
    
    for(Opportunity op : [SELECT Id, StageName FROM Opportunity WHERE StageName = 'Closed Won' AND Id IN : Trigger.new]){
        if(Trigger.isInsert || Trigger.isUpdate){
            if(op.StageName == 'Closed Won'){
                newTask.add(new Task(Subject = 'Follow Up Test Task', WhatId = op.Id));
            }
            else if(Trigger.oldMap.get(op.Id).StageName != 'Closed Won'){
                newTask.add(new Task(Subject = 'Follow Up Test Task', WhatId = op.Id));
            }
        }        
    }   
    if(newTask.size() > 0)
        insert newTask;
    
}