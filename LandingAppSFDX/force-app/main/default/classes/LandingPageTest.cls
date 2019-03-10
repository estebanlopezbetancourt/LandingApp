@isTest
private class LandingPageTest {
    @TestSetup
    static void makeData(){
      
    }

    @isTest static void testLanding(){
        LandingPageController controller = new LandingPageController();
        controller.firstName = 'Esteban';
        controller.lastName = 'Lopez';
        controller.email = 'test@test.com';

        test.startTest();
        controller.saveContact();
        test.stopTest();

        Contact contactResult = [SELECT firstName, lastName, email, isLandingContact__c FROM Contact WHERE email =: controller.email LIMIT 1];
        System.assertEquals('Esteban',contactResult.firstName);
        System.assertEquals('Lopez', contactResult.lastName);
        System.assertEquals('test@test.com', contactResult.email);
        System.assert(contactResult.isLandingContact__c);

    }
}
