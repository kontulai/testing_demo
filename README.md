ATDD Example Project
====================

This is a simple example project that demonstrates a simple reservation system implemented with rails. Project utilizes ATDD tests implemented in cucumber with capybara and robot framework test with selenium. With this project it is easy to demonstrate how projects can be tested with these frameworks.

Installation
------------

Installation instructions for Mac OS X Lion. Follow all the installer instructions and install all required dependecies.

fork this project: git clone https://git@github.com:rellu/project_name

* install XCode: Go to app store, search and install XCode, this should be bundled with git. (Required for macports)
* install git if not included in Xcode or using different OS: [git](http://git-scm.com/download)
* (optional install rvm:) 

		sudo bash < <( curl -s https://rvm.beginrescueend.com/install/rvm )
		rvm install 1.9.2
		rvm use 1.9.2
		rvm --default 1.9.2
	
* install macports: [MacPorts](http://www.macports.org/install.php)
		
* install rails:
	
		gem install rails
	
* install rake:
	
		gem install --remote rake
	
* install cucumber:
	
		gem install cucumber
	
* install capybara:
	
		gem install capybara
		sudo port install libffi
	
* install robot:
 * [robot downloads](http://code.google.com/p/robotframework/downloads/list)

			sudo python setup.py install

 * [robot selenium library](http://code.google.com/p/robotframework-seleniumlibrary/downloads/list)

	 		sudo python setup.py install
	
* (optional install ride editor for robot: ) 
 * [wxPython](http://www.wxpython.org/download.php). To use wxPython you need to run python in 32-bit mode so:

			defaults write com.apple.versioner.python Prefer-32-Bit -bool yes

 * [ride](https://github.com/robotframework/RIDE/downloads)

			sudo python setup.py install
	
	
* install rest of the needed gems (type in project folder):
		gem install bundler
		bundle install
	
* (optional install jenkins: [jenkins](http://jenkins-ci.org/))
 * make sure rvm is installed for all users (install rvm with sudo, rvm can be found from /usr/local/rvm/)
 * Create new OS X user jenkins
 * Modify the file /Library/LaunchDaemon/org.jenkins-ci.plist, remove the GroupName and daemon value and then change UserName to jenkins

			sudo chown -R jenkins:wheel /Users/Shared/Jenkins
			login jenkins
	
			go to project folder:
			if rvm is not installed for this user install rvm.
			gem install bundler
			bundle install
			try out that cucumber and pybot works normally.
	
			login admin user and restart jenkins:
			sudo launchctl unload -w /Library/LaunchDaemons/org.jenkins-ci.plist
			sudo launchctl load -w /Library/LaunchDaemons/org.jenkins-ci.plist

 * install thin server: 

			gem install thin

 * install jenkins plugins for robot, rails, ruby and git	
 * create new jenkins project with configuration:
  * git: https://git@github.com:rellu/project_name
  * poll scm: * * * * *
  * Execute shell:

 		#!/bin/bash -x
		source "/usr/local/rvm/scripts/rvm"
		rvm use 1.9.2
		ruby -v
		bundle install
		bundle exec rake db:migrate
		bundle exec rake cucumber
		bundle exec rake db:reset
		thin start -d
		/usr/local/bin/pybot robot_tests
		thin stop

  * check publish robot results

	
* (optional install textmate bundles for robot, cucumber, rails etc.)

In case of version conflicts this was implemented with following sofware versions:

* ruby 1.9.2p290 (2011-07-09 revision 32553) [x86_64-darwin11.2.0]
* Rails 3.1.1
* Robot Framework 2.6.3 (Python 2.7.1 on darwin)
* rake, version 0.9.2
* cucumber 1.1.0
* rvm 1.8.6
* capybara 1.1.1
* robotframework-seleniumlibrary-2.8
* Rubygems 1.8.10

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

1.	Login with: u: user@example.com, p: please
2.	Navigate to Resource1
3.	Book a resource for some hour
4.	Cancel the resource

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
It's easier to demonstrate the tests using ride.py editor. Open ride:

	ride.py
	
* open /robot_tests folder
* you can present and run tests easier with this editor


TODO:
=====

* Layout looks too basic: add css
* Add feature to browse resources for more days than today
* Add more complex multi-user tests
* Improve session handling
* Refactor


     