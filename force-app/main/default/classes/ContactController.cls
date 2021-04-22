public class ContactController {

    
    @AuraEnabled
    public static List<Contact> getAllContacts() {
        
        List<Contact> contactList= [SELECT Id, LastName, Phone, Email FROM Contact];
        
        return contactList;
    }
}