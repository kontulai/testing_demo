ATDD Example Project
====================

This is a simple example project that demonstrates a simple reservation system implemented with rails. Project utilizes ATDD tests implemented in cucumber with capybara and robot framework test with selenium. With this project it is easy to demonstrate how projects can be tested with these frameworks.

Installation
------------

fork this project: git clone https://git@github.com:rellu/<project name>

install git:
(optional install rvm:)
install rails:
install rake:
install cucumber:
install capybara:
install robot:
(optional install ride: )

In case of version conflicts this was implemented with following sofware versions:

*ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin11.2.0]
*Rails 3.1.1
*Robot Framework 2.6.3 (Python 2.7.1 on darwin)
*rake, version 0.9.2
*cucumber 1.1.0
*rvm 1.8.6
*capybara 1.1.1
*robotframework-seleniumlibrary-2.8

Software usage
--------------

When everything is installed you should be able to start the software by navigating into to the project folder and executing:
		
		bundle install (to install all needed gems)
		rake db:create (to create database)
		rake db:migrate (to roll database to current schema)
		rake db:reset (to reset and seed the test data)
		rails s (to start the server)

These default setting will create the database assuming sqlite3 is used and execute rails in webrick server. These settings can be changed if necessary and you can for example use `thin` as a server.
		
The software allows you to create users and login with those users to make time slot bookings for resources for today. By default rake db:reset will populate the database with few test users, test resources and test bookings. You can see what it does exactly from `db/seeds.rb` file. However, do not delete anything from this file as some tests depend on these database populations.

Simple basic use case:
* Login with: user@example.com
* Navigate to Resource1
* Book a resource for some hour
* Cancel the resource

As you can see the usage is really limited but this still allows us to demonstrate how tests can be added to existing projects.

Test usage
----------

Cucumber test can be executed by typing this project folder:

		rake cucumber
	
Cucumber tests are located in `/features/` folder. in `.feature` files you can view the test descriptions and in `/features/step_definition` folder you can find the associated definition for all steps. The test are written with acceptance testing syntax (e.g Given, When, Then) and the step definitions are implemented using capybara. Cucumber tests automatically flush the db in every run to avoid.


Robot tests can be executed by typing executing these in project folder:
	rake db:reset  (to reset db)
	pybot robot_tests (to execute robot tests)

Robot tests are in a single file /robot_tests/Selenium.txt
Test results can be found in the project folder in `report.html` and `log.html`
It's easier to demonstrate the tests using ride.py editor. 

TODO:
=====

*Layout looks too basic: add css
*Add feature to browse resources for more days than today
*Add more complex multi-user tests
*Improve session handling
*Refactor

     