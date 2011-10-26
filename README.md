ATDD Example Project
====================

This is a simple example project that demonstrates a simple reservation system implemented with rails. Project utilizes ATDD tests implemented in cucumber with capybara and robot framework test with selenium. With this project it is easy to demonstrate how projects can be tested with these frameworks.

Installation
------------

fork this project: git clone git@github.com:rellu/<project name>

install git:
install rails:
install rake:
install cucumber:
install robot:


Software usage
--------------

When everything is installed you should be able to start the software by navigating into to the project folder and executing:

		rake db:create 
		rake db:migrate
		rake db:reset
		rails s

These default setting will create the database assuming sqlite3 is used and execute rails in webrick server. These settings can be changed if necessary and you can for example use `thin` as a server.
		
The software allows you to create users and login with those users to make time slot bookings for resources for today. By default rake db:reset will populate the database with few test users, test resources and test bookings. You can see what it does exactly from `db/seeds.rb` file. However, do not delete anything from this file as some tests depend on these database populations.    