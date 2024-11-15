List<Contact> contactsToCreate = new List<Contact>();
for (Integer i = 1; i <= 5; i++) {
    Contact con = new Contact(
        FirstName = 'First' + i,
        LastName = 'Last' + i,
        Email = 'dummy.email' + i + '@example.com',
        Phone = '123-456-789' + i
    );
    contactsToCreate.add(con);
}

// Step 4: Insert the contacts
upsert contactsToCreate;