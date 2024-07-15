NVM_DIR=$(HOME)/.nvm

.DEFAULT_GOAL := help

.PHONY: help lint lint/eslint lint/tsc tests dev

help: ## Show help message
	@grep -E '^[a-zA-Z0-9_/.-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
	awk 'BEGIN {FS = ":.*?## "; printf "\nUsage:\n  make \033[36m\033[0m\n"} { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 }'

lint: lint/eslint lint/tsc ## Lint project

lint/eslint: ## Lint project with Eslint
	@echo "👉 ${GREEN}Lint${END} with Eslint..."
	. "$(NVM_DIR)/nvm.sh" && nvm exec pnpm run lint

lint/tsc: ## Lint project with Typescript
	@echo "👉 ${GREEN}Checking${END} Typescript types"
	. "$(NVM_DIR)/nvm.sh" && nvm exec npx nuxi typecheck

tests: ## Run tests
	@echo "👉 ${GREEN}Testing...${END}"
	. "$(NVM_DIR)/nvm.sh" && pnpm vitest run

restart: ## Restart the dev server
	cd ../../docker && docker compose kill app && docker compose up -d app
