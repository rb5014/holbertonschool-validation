
# holbertonschool-validation

Module 1: Introduction to DevOps: Automate Everything to Focus on What Really Matters

## Prerequisites

Use the theme “ananke” for the website by following the section Note
for non-git users at the Step 3
Usage of Git Submodules is prohibited: there should be no file .gitmodules
The website title should be “Awesome Inc.”
The contents consists in a single blog post which title should be
“Welcome to Awesome Inc.”, stored in a file named welcome.md
All of the website’s source code is stored under a directory named module1_task0
The command line hugo in version 0.84.0 must be used
The website is expected to be generated into the directory module1_task0/dist/
The directory module1_task0/dist/ must not be committed (it should be absent
from the repository)

## Lifecycle

"Build”: Generate the website from the markdown and configuration files
“Clean”: Cleanup awesome-api and awesome.log
"Help": Show the help usage
"Run": Run the server
"Stop": Stop the server
"Test": Test the server
"Lint" Lint the main.go
"Unit-tests": Unit-tests the main.go
"Integration-tests": Integration-tests the main.go
“Post”: Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
"Check": Check for dead links
"Validate": Validate the website using w3c validator

Usage: make build, make clean, make help, make run, make stop, make test, make lint, make unit-tests, make integration-tests, make post, make check, make validate

