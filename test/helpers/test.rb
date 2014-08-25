User.create(name: "a", email: "b") # 1
Contact.create(name: "a", email: "b", user_id:1) #1

User.create(name: "Alice", email: "alice@mail") # 2
User.create(name: "Bobby", email: "bob@mail") #3
User.create(name: "Chris", email: "chris@mail")#4
User.create(name: "David", email: "david@mail")#5

Contact.create(name: "alice1", email: "ali1", user_id: 2) #2
Contact.create(name: "alice2", email: "ali2", user_id: 2) #3
Contact.create(name: "bobby1", email: "bob1", user_id: 3) #4
Contact.create(name: "bobby2", email: "bob2", user_id: 3) #5
Contact.create(name: "chris1", email: "crs1", user_id: 4) #6
Contact.create(name: "chris2", email: "crs2", user_id: 4) #7

ContactShare.create(contact_id: 1, user_id: 2)
ContactShare.create(contact_id: 1, user_id: 3)
ContactShare.create(contact_id: 2, user_id: 5)
ContactShare.create(contact_id: 2, user_id: 6)
ContactShare.create(contact_id: 2, user_id: 7)
