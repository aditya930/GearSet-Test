trigger ACC_AccTrigger on Account (before insert) {
    for(Account accObj : Trigger.new){
        accObj.Phone = '123456';
    }
    
    system.debug('test123');
}