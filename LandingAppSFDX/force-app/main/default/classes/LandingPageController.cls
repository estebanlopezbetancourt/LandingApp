public with sharing class LandingPageController {

    public string firstName { get; set;}
    public string lastName { get; set;}
    public string email { get; set;}
    public Boolean isSaveSuccess {get; set;}


    public LandingPageController() {

    }

    public System.PageReference saveContact(){
        Contact contacto = new Contact();
        contacto.FirstName = this.firstName;
        contacto.LastName = this.lastName;
        contacto.Email = this.email;
        contacto.isLandingContact__c = true;

        insert contacto;
        this.isSaveSuccess = true;

        return null;
    }
}
