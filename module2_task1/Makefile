# Help on commands
help: ## Show this help
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

# lint the main.go
lint: ## lint the main.go
	@golangci-lint run

# Build the website
build: ## Build the go
	@make lint
	@go build

# Run the website
run: ## Run the website
	@./awesome-api >./awesome.log 2>&1 &

# Stop the website
stop: ## Stop the website
	@pkill awesome-api || true

# Clean up the awesome-api
clean: ## Clean up the awesome-api
	@pkill awesome-api || true
	@rm -f awesome-api awesome.log

# tests the files
test: ## test the files
	@curl http://localhost:9999
	@curl http://localhost:9999/health

	
# Set default target
.PHONY: build clean run stop test lint
