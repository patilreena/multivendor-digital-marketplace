ThinkDigital: Multivendor digital marketplace
==================================================


Concept, Design and build
-----------------
To kick off the project, I talked to key stakeholders to determine the requirements and expectations for the project. After gathering the information, I went ahead to create a low fidelity sketch of the digital marketplace


Design process
-----------------
I have broken down the entire design process to below multiple steps. 

1. **Workflow**
	I have created the flowchart of the various user flows that I would like to support  and possible happy paths in the application. Below is the flow diagram,
 
	
2. **Entity Relation Diagrams**
	Rails has a nice semantic way to declare model associations. I modelled my tables with all the possible relations. 
	
3. **Wireframes**
below are few of the wireframes , please follow the link to see all the wireframe designs


Generate rails app
----------------
I generated the rails app with postgres as the default database.
```
~/apps $ gem install rails --no-ri --no-rdoc
~/apps $ rails new think-digital -d postgresql
```

once the rails app is generated from above commands, next steps is to scaffold all the data models based on the ERD diagrams. Scaffold will create views and controller for all the models along with database migration scripts

**Run migrations**
```
~/apps/think-digital rails db:migrate
```


Technology Stack
-----------------
**Front End:** HTML, CSS, JavaScript, Boostrap

**Backend:** Rails

**Storage:** AWS S3

**Mail Service:** AWS SES

**Deployment:** Heroku, AWS


Deployment
-------------

The application is deployed both on AWS and Heroku. On the AWS side, I used code star to enable easy continuous integration and deployment.


What's Here
-----------

This sample includes:

* README.md - this file
* Gemfile - Gem requirements for the sample application
* Gemfile.lock - this file contains the specific versions of your application
  dependencies
* Rakefile - this file contains scripts available via the `rake` command
* appspec.yml - this file is used by AWS CodeDeploy when deploying the web
  application to EC2
* app/ - this directory contains your sample application
* config/ - this directory contains config files for your application
* config.ru - this file contains configuration for Rack middleware
* db/ - this directory contains database files for your application
* lib/ - this directory contains library modules needed by your application
* log/ - this directory contains application log files
* public/ - this directory contains static web assets used by your application
* scripts/ - this directory contains scripts used by AWS CodeDeploy when
  installing and deploying your application on the Amazon EC2 instance
* test/ - this directory contains tests for your application
* tmp/ - this directory contains temporary files for your application
* vendor/ - this directory contains third-party code such as plugins and gems
  

Getting Started
---------------

These directions assume you want to develop on your local computer, and not
from the Amazon EC2 instance itself. If you're on the Amazon EC2 instance, the
virtual environment is already set up for you, and you can start working on the
code.

To work on the sample code, you'll need to clone your project's repository to your
local computer. If you haven't, do that first. You can find instructions in the
AWS CodeStar user guide.

1. Install Rails (see http://guides.rubyonrails.org/getting_started.html)

2. Install bundle:

        $ gem install bundle

3. Install Ruby dependencies for this application:

        $ bundle install

4. Start the Rails development server:

        $ rails server

5. Open http://127.0.0.1:3000/ in a web browser to view your application.
