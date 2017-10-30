Welcome to the AWS CodeStar sample web application
==================================================

This sample code helps get you started with a simple Rails web application
deployed by AWS CodeDeploy to an Amazon EC2 instance.

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

What Do I Do Next?
------------------

Once you have a virtual environment running, you can start making changes to
the sample Rails web application. We suggest making a small change to
/app/views/hello_page/hello.html.erb first, so you can see how changes pushed
to your project's repository are automatically picked up by your project pipeline
and deployed to the Amazon EC2 instance. (You can watch the progress on your project
dashboard.) Once you've seen how that works, start developing your own code, and have fun!

Learn more about AWS CodeStar by reading the user guide.  Ask questions or make
suggestions on our forum.

User Guide: http://docs.aws.amazon.com/codestar/latest/userguide/welcome.html

Forum: https://forums.aws.amazon.com/forum.jspa?forumID=248
