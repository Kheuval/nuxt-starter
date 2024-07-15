include .env.local

.DEFAULT_GOAL := help

.PHONY: help lint lint/eslint lint/tsc tests dev

help: ## Show help message
	@grep -E '^[a-zA-Z0-9_/.-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	awk 'BEGIN {FS = ":.*?## "; printf "\nUsage:\n  make \033[36m\033[0m\n"} { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 }'

certificates: ## Generate dev certificates
	cd caddy && mkcert ${PROJECT_NAME}.dev && cd ..