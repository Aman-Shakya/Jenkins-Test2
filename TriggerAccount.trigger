trigger TriggerAccount on Account (After insert,Before Update,After Update) {
    system.debug('Asd');
    if(Trigger.isInsert){
        if(Trigger.isAfter){
           // TriggerClassAccount.San(Trigger.new);
           //VikasSirQuestion1.disp(Trigger.New);
        }
    }
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            system.debug('Trigger==>>   Update case ');
            // TriggerClassAccount.UpDel(Trigger.Old,Trigger.new);
            //VikasSirQuestion2.Butter(trigger.old,Trigger.New);
            
        }If(Trigger.IsAfter){
           // VikasSirQuestion3.Cream(Trigger.New);
           TestSheet1.Dholu(trigger.old,Trigger.New);
           
        }
        
    }
}