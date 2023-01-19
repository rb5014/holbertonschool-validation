# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# Build the website in the dist directory
build: ## Build the website in the dist directory
	hugo 

# Clean up the dist directory
clean: ## Clean up the dist directory
	rm -rf dist/*

# Create a new blog post
post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

# Set default target
.PHONY: build clean post help
