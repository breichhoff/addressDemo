# README

Simple address book web application using ruby on rails. The code, when set up locally, can be run and reached on a rails server. 

How this application was created: 
I used Rails to generate a new web application with a basic structure. I then read a tutorial from tutorialspoint.com and followed closely the process. I created the databases first, then used rails to generate models for both People and Addresses. In these I defined a one-to-many relationship between people and addresses (one person for several different addresses), as well as the basic data fields I would need (i.e., first_name, middle_name, last_name for Person, street_address, city, state, zip, and person_id for Address). Rails then generated migration files for both Person and Address, and after defining the columns needed for both types, the migrations were run. I then added controller files for both Person and Address, and defined the basic possible actions (e.g., create, add, show). Then, the routes file was changed so that actions chosen by the user on the view pages would be connected to controller actions. Finally, the necessary view pages were created: one for listing and deleting people, one for creating new people, one for showing all the addresses for a person, one for listing and deleting addresses, one for adding an address for a person, and one for viewing a single address. Each page's actions were correctly linked to the controller through the router.rb file. 

For database configuration, I created 3 databases in total, one each for development, testing, and production. It was unnecessary to create 3 databases, but made it simpler to follow the tutorial. These three databases are: addressdemo_development, addressdemo_test, and addressdemo_production. A user was created on my machine called rubyuser. If you would like to use a different user in testing, the database.yml file inside of the folder config will need to be modified. 

Rails version: 5.0.0.1
Ruby version:  2.3.1p112
Postgresql version: 9.5.5

# addressDemo
