# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# Build the website
build: ## Build the go
	go build

# Run the website
run: ## Run the website
	./awesome-api >./awesome.log 2>&1 &

# Stop the website
stop: ## Stop the website
	pgrep awesome-api | xargs kill

# Clean up the awesome-api
clean: ## Clean up the awesome-api
	pgrep awesome-api | xargs kill
	rm -f awesome-api awesome.log


# tests the files
test: ## test the files
	curl http://localhost:9999
	curl http://localhost:9999/health

# Set default target
.PHONY: build clean run stop test
