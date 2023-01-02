# Build the website
build:
	hugo 

# Clean up the dist directory
clean:
	rm -rf dist/

# Create a new blog post
post:
	hugo new "content/posts/$(POST_NAME).md"
	sed -i "/title:*/c\title: \"$(POST_TITLE)\"" content/posts/$(POST_NAME).md
# Set default target
.PHONY: build clean post