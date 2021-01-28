## Bookmark Manager 
https://github.com/makersacademy/course/blob/master/bookmark_manager/00_challenge_map.md

## About 
A week 4 project of my Makers LDN developer course. Our goal was to build a website that can maintain a collection of bookmarks(URLs). You can use it to save a webpage you found useful and add tags to make it easier to find later on.

## Domain Model 
![Github Logo](/resources/Domain_model.png)

## Database Setup

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## Test Database 

There is an additional test database setup called 'bookmark_manager_test'. This can be created in the terminal as follows.

```
$> psql
admin=# CREATE DATABASE "bookmark_manager_test";
admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
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