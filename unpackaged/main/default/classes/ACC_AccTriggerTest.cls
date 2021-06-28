@isTest
private class ACC_AccTriggerTest {
	@isTest
    private static void validateAccountCreation() {
        Account testAcc = new Account();
        testAcc.Name = 'Test Account';
        Test.startTest();
        insert testAcc;
        Test.stopTest();
        
        Account testAccount = [SELECT Id,Phone FROM Account];
        System.AssertEquals('123456', testAccount.Phone, 'Account Phone no.');
    }
}