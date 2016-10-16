//Apex Class to Fetch data according to the Expence__c in ExpenseMember__c object, so as to find the members who have contributed towards that event.
public with sharing class ExpenseExtensions
{
    public list<ExpenseMember__c> list1 {get;set;}
    public Expence__c eObj{get;set;}
     //Defining Constructor
    public ExpenseExtensions(ApexPages.StandardController controller) 
    {
        eObj = (Expence__c)controller.getRecord();
        list1 = new list<ExpenseMember__c>();
    }
    //Populating the LIST with the data for the specified ID which has been fetched by getRecord()
    public void getMembers()
    {
        list1 =  [Select Name, Expence__c, Member__r.First_Name__c,Contribution_Amount__c from ExpenseMember__c where Expence__c=: eObj.Id];
        
    }
}