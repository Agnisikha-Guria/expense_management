<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Planning_for_new_event</fullName>
        <description>Planning for new event</description>
        <protected>false</protected>
        <recipients>
            <recipient>agnisikha@optimizeitsystems.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Event_Creation_Mail</template>
    </alerts>
    <rules>
        <fullName>Event_Creation_Rule</fullName>
        <actions>
            <name>Planning_for_new_event</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>when new event is created this rule will generate</description>
        <formula>CreatedDate &lt;=NOW()</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
