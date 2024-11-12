@isTest
public class WrapperExampleTest {
    
    @isTest
    static void testWrapperExampleFields() {
        // Create an instance of WrapperExample
        WrapperExample wrapper = new WrapperExample();
        
        // Set values for each field
        wrapper.name = 'John Doe';
        wrapper.street = '123 Main St';
        wrapper.dogsName = 'Buddy';
        
        // Verify that each field was set correctly
        System.assertEquals('John Doe', wrapper.name, 'The name field was not set correctly.');
        System.assertEquals('123 Main St', wrapper.street, 'The street field was not set correctly.');
        System.assertEquals('Buddy', wrapper.dogsName, 'The dogsName field was not set correctly.');
    }
}

