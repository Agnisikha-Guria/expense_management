//Test Class for ExpenseExtensions Apex Class which is being used by ExpenseDetailsVF Visualforce page
@isTest
public class ExpenseExtensions_Test
{
    public static testMethod void controllerTest()
    {
        Expence__c ex = new Expence__c();
        //Mandatory data is being manually populated to check the insert of these data into Expence__c object.
        ex.Event__c='abc';
        ex.Amount__c=1000;
        ex.Date__c=date.parse('12/27/2015');
        insert ex;
       
        
        ExpenseExtensions exp = new ExpenseExtensions(new ApexPages.StandardController(ex));
        //Calling getExpMembers Function in ExpenseExtensions Apex Class
        exp.getMembers();
        
        
    }

    
}