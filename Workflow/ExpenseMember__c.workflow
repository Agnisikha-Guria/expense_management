<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_alert_for_new_event</fullName>
        <ccEmails>agnisikha@optimizeitsystems.com</ccEmails>
        <description>Email alert for new event</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/InvoiceTemplate</template>
    </alerts>
    <fieldUpdates>
        <fullName>Email_Update</fullName>
        <description>Email field will be updated when the workflow get fired</description>
        <field>Email__c</field>
        <formula>Member__r.Email__c</formula>
        <name>Email Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>EmailGenerateRule</fullName>
        <active>false</active>
        <formula>NOT(ISBLANK( Member__r.Email__c ))</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>EmailGenerate_Rule</fullName>
        <actions>
            <name>Email_alert_for_new_event</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Email_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISBLANK( Member__r.Email__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
