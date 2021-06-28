trigger ACC_AccTrigger on Account (before insert) {
    for(Account accObj : Trigger.new){
        accObj.Phone = '123456';
    }
    Contact con = [SELECT Id from Contact LIMIT 1];
}