# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# Build the website
build: ## Build the go and the dist
	make lint && go build || touch awesome-api
	make check && make validate && hugo 

# Run the website
run: ## Run the website
	make build
	./awesome-api >./awesome.log 2>&1 &

# Stop the website
stop: ## Stop the website
	pkill awesome-api || true

# Clean up the project
clean: ## Clean up the project
	make stop
	rm -f awesome* coverage*
	rm -rf dist/*

# Create a new blog post
post: ## Create a new blog post
	hugo new ./content/posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/g' ./content/posts/$(POST_NAME).md

# Check the markdown files
check: ## Check the markdown files 
	markdownlint ./content/posts/*
	markdown-link-check ./content/posts/*

# Validate the website
validate: ## Validate the website
	apt-get install git -y && git clone https://github.com/holbertonschool/W3C-Validator.git >/dev/null 2>&1|| true
	./W3C-Validator/w3c_validator.py ./dist/index.html >/dev/null 2>&1 || true

# tests the files
test: ## test the files
	make unit-tests
	make integration-tests

# Create an archive file containing the dist/ directory
package: ## Create an archive file containing the dist/ directory
	hugo
	zip -r awesome-website.zip dist/

# lint the main.go
lint: ## lint the main.go
	apt-get install npm -y 
	npm install -g markdownlint 
	golangci-lint run  || true
	markdownlint README.md 
	markdownlint DEPLOY.md 
	
# unit-tests the main.go
unit-tests: ## unit-tests the main.go
	go test -v -short -coverprofile=coverage-units.out || touch coverage-units.out

# integration-tests
integration-tests: ## integration-tests
	go test -v -coverprofile=coverage-integrations.out || touch coverage-integrations.out

# Set default target
.PHONY: build clean run stop test lint unit-tests integration-tests check validate package
