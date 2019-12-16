SELECT
   CONCAT(t1.product1Name, t2.product2Name) AS ID,
   t1.product1Name,
   t2.product2Name
 FROM 
 (
    SELECT Name AS product1Name, Color__c, Brand__c,Type__c FROM Product2_Salesforce
 ) AS t1
 CROSS JOIN 
 (
    SELECT Name AS product2Name, Color__c, Brand__c,Type__c FROM Product2_Salesforce
 ) AS t2
 WHERE 
        t1.Color__c = t2.Color__c 
        AND
        t1.Type__c != t2.Type__c
