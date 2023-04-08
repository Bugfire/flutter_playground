help: ## This help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

generate: ## Generate codes
	flutter pub run slang

devices: ## Show avaiable devices
	flutter devices

emulators: ## Show available emulators
	flutter emulators

format: ## Format
	dart format --dry-run `find lib -name "*.dart" -not -name "*.g.dart"`

lint: ## Lint
	flutter analyze
