# Internship_deloitte

## Employee Management System

ASP.NET Web Forms application with HTML, CSS, Bootstrap, and C# for CRUD operations.

An application to manage employees, their personal information, salary details, attendance data and projects assigned to them.
It consists to 2 roles: Admin, Users (Employees)

Employee Pages:
- Employees can signup by filling the information and will be assigned user role by default.
- Employees can then signin using the credentials provided while signup
- They can view and edit their personal data which will be updated in database if there are any changes
- They can view the projects assigned to them and also check their salary and performance details.

Admin Pages:
- Admin can add new users. Admin can login into the application and make other users as admin.
- They can view,edit and delete the details of any employee.
- They can view,edit and delete the project details, salary data, and attandance details of any employee.
- Users can use forgot password feature to create new password if required.

- HTML, CSS and Bootstrap are used to create responsive user interface whereas C# is used to perform CRUD operations on database.
- Used SQL server for database. Designed tables and created stored procedures as required.

## Form Recognition

Technology: ASP .NET WEb Forms application, Azure Form Recognition Cognitive Service

- This application allows users to upload an image of a form and submit it to the form recognition API endpoint.
- The FormRecognition service extracts the details from the form and stores it in database for further use.
- Used MVC architecture to seperate  BusinessObjects, DataAccess, API call and user interface.
- Application uses SQL Server as database to store the extracted details.

## Cricket Commentary Classification

Technology: NLP, Machine Learning

ML model to classify a ball as boundary, wicket, run between wickets or dot ball based on the commentary.

Data -> Comment for each ball and a label for the row specifying the kind of ball.
It consists of commentary for each ball in 775 matches. each match is represented with unique id.

- Load the dataset
- Analyze it
- Balance the data by performing overampling
- Remove stopwords
- perform lemmatization
- convert the text data into vectors (Count vectorizer)
- perform normalization (TFIDF)
- split the data into training and test data
- Initialize a classification model (SVM is used as it gave better accuracy)
- train the model using train split 
- Use the test split to evaluate the model
- Make predictions on unseen data


