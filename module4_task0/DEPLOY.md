# tag

## What is in the archive and how to unarchive it?

The archive awesome-website.zip contains the directory dist/
which contains the website
You can unzip it to the current directory using => unzip awesome-website.zip

## What are the commands to start and stop the application?

The commands to start and stop the application are => make run and make stop or make
 clean if you want to remove also the binary and logs

## How to customize where the application logs are written?

In the makefile:- change the run target: change the output of the ./awesome-api command
                - change the unit and integration tests targets outputs

## How to “quickly” verify that the application is running (healthcheck)?

run make tests
