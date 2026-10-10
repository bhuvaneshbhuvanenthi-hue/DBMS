Download MongoDB: 
Visit the MongoDB Download Center. 
Select the appropriate version for your operating system and download the installer. 
Install MongoDB: 
Follow the installation instructions specific to your operating system. 
Start MongoDB: 
Open a terminal or command prompt. 
Start the MongoDB server: 
On Windows: C:\Program Files\MongoDB\Server\<version>\bin\mongod.exe 
On macOS/Linux: Run mongod command. 
Open MongoDB Shell: 
Open a new terminal or command prompt. 
Start the MongoDB shell by running mongo. 
Step 2: Create a Database and Collections 
> use library 
switched to db library 
Step 3: Insert Data 
> db.authors.insertMany([ 
{ "AuthorID": 1, "FirstName": "George", "LastName": "Orwell" }, 
{ "AuthorID": 2, "FirstName": "Aldous", "LastName": "Huxley" }, 
 
{ "AuthorID": 3, "FirstName": "J.K.", "LastName": "Rowling" } ]) 
Output 
{ "acknowledged": true, "insertedIds": [ 1, 2, 3 ] } 
> db.books.insertMany([ 

{ "BookID": 1, "Title": "1984", "Genre": "Dystopian", "PublicationYear": 1949, "Authors": [1] 
}, 
{ "BookID": 2, "Title": "Brave New World", "Genre": "Dystopian", "PublicationYear": 1932, 
"Authors": [2] }, 
{ "BookID": 3, "Title": "Harry Potter and the Sorcerer's Stone", "Genre": "Fantasy", 
"PublicationYear": 1997, "Authors": [3] } ]) 
Output 
{ "acknowledged": true, "insertedIds": [ 1, 2, 3 ] } 
> db.borrowers.insertMany([ 
{ "BorrowerID": 1, "FirstName": "John", "LastName": "Doe", "MembershipDate": new 
Date("2023-01-01") }, 
{ "BorrowerID": 2, "FirstName": "Jane", "LastName": "Smith", "MembershipDate": new 
Date("2023-02-15") } ]) 
Output 
{ "acknowledged": true, "insertedIds": [ 1, 2 ] } 
> db.borrowedBooks.insertMany([ 
{ "BorrowerID": 1, "BookID": 1, "BorrowedDate": new Date("2023-03-01"), "ReturnDate": new 
Date("2023-03-15") }, 
{ "BorrowerID": 2, "BookID": 3, "BorrowedDate": new Date("2023-03-05"), "ReturnDate": new 
Date("2023-03-20") } ]) 
Output 
{ "acknowledged": true, "insertedIds": [ 1, 2 ] } 
Step 4: Update Data 
> db.authors.updateOne( { "AuthorID": 1 }, { $set: { "LastName": "Smith" } } ) 

Output 
{ "acknowledged": true, "matchedCount": 1, "modifiedCount": 1 } 
Step 5: Query Data 
> db.authors.find().pretty() 
Output 

{ "_id": ObjectId("..."), "AuthorID": 1, "FirstName": "George", "LastName": "Smith" }, 
{ "_id": ObjectId("..."), "AuthorID": 2, "FirstName": "Aldous", "LastName": "Huxley" }, 
{ "_id": ObjectId("..."), "AuthorID": 3, "FirstName": "J.K.", "LastName": "Rowling" } 
Step 6: Delete Data 
> db.authors.deleteOne({ "AuthorID": 1 }) 
Output 
{ "acknowledged": true, "deletedCount": 1 } 
