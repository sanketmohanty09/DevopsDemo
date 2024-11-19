@isTest
public class Case_UtilityTest {
    
    @isTest
    static void testUpdateCaseSubject() {
        // Create test case data
        List<Case> caseList = new List<Case>();
        for (Integer i = 0; i < 3; i++) {
            Case cs = new Case();
            cs.Subject = 'Original Subject ' + i;
            caseList.add(cs);
        }
        insert caseList;
        
        // Call the updateCaseSubject method
        Case_Utility.updateCaseSubject(caseList);
        
        // Update the cases to commit changes to the database
        update caseList;
        
        // Retrieve and verify that the subject was updated
        List<Case> updatedCases = [SELECT Id, Subject FROM Case WHERE Id IN :caseList];
        for (Case cs : updatedCases) {
            System.assertEquals('Kewl New Subject', cs.Subject, 'The subject was not updated correctly.');
        }
    }
    
    @isTest
    static void testCreateCase() {
        // Call the createCase method
        Case_Utility.createCase();
        
        // Retrieve the newly created case and verify the subject
        Case newCase = [SELECT Id, Subject FROM Case WHERE Subject = 'Awesome Case' LIMIT 1];
        System.assertNotEquals(null, newCase, 'No case was created.');
        System.assertEquals('Awesome Case', newCase.Subject, 'The subject of the created case is incorrect.');
    }
}
