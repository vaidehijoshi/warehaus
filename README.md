# README

Welcome to Warehaus!

This is a very rough sketch of what a warehouse application might look like. The keyword here being *rough*, since there's still a lot of work to be done and all this does at the moment is structure out how different models would depend on one another.

## Once you've cloned/unzipped the project, you can:
1. Run `rake db:seed` to get some initial seed data to play with in the console (`bin/rails console`).
2. Run `rspec` to see some tests pass!
3. Run `bin/rails server` to run the app.

Here's a quick sketch of how these models are structured, and how they related to one another:
![Alt text](/app/assets/images/warehaus_schema.jpeg?raw=true "Warehaus Schema Structure")

## Things I'd like to work on:

* Fix my broken test -- there's an issue with how I've set up `FactoryGirl` and it seems like that's causing problems in being able to get my `Shipment#assign_warehouse` to work. If I let myself keep working on this beyond the time limit, I'd like to tackle that first.

* Add some uniqueness restrictions, since I realize that the validations I have aren't really enough.

* Add some indexes to speed up queries.

* Add more tests!

* Also: figure out why my tab and line spacing looks so wonky...
