## Bookmark Manager 
https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md

## About 
A week 4 project of my Makers LDN developer course. Our goal was to build a website that can maintain a collection of bookmarks(URLs). You can use it to save a webpage you found useful and add tags to make it easier to find later on.

## Domain Model 
![Github Logo](/resources/Domain_model.png)

## Database Setup

Ruby is connected to `psql` for database support and 'Tableplus' which is a GUI that enables the developer to edit table data in the following databases.

```
bookmark_manager is used for development 
bookmark_manager_test is used for testing 
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## Test Database 

RSpec tests the database functionality both locally and remotely using a test database setup called 'bookmark_manager_test' and dummy data is input within test. Each time the test is run, RSpec with automatically clear out the table database for fresh test data. 

## MVC 

The POST route for sending new URL's to the database, initially connected and executed SQL all in the controller (app.rb). This is against the idea of MVC and I later migrated the database interaction from controller --> model. This split functionally into  Model View Controller to keep the code clean.

```
I achieved this by adding a create method to Bookmarks class. 
This is effectively the Model and stored in lib/bookmark. 
The Interface for the Model is a few lines of code and stored in app. This is the controller.
The Interface calls the new method Bookmarks.create which is fed a url. 
The Model then gets to work away from the controller and adds a new URL to database.
Once this is done last line of code on Interface re-directs user back to 'bookmarks' so they can view their URLs.
```

## User Story 1

```
As a user  
So I can see my bookmarks(URLs)  
Show a list of bookmarks
```

## User Story 2

```
As a time-pressed user 
So that I can save a website 
I would like to add the site's address and title to bookmark manager
```