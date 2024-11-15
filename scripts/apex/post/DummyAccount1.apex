List<Account> accountsToCreate = new List<Account>();

// Create 5 dummy accounts
for (Integer i = 1; i <= 5; i++) {
    Account acc = new Account(
        Name = 'Dummy ' + i,
        Phone = '123-456-789' + i,
        BillingCity = 'City ' + i,
        BillingCountry = 'Country ' + i
    );
    accountsToCreate.add(acc);
}

// Insert the accounts
upsert accountsToCreate;