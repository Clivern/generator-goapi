NPM ?= npm
NPX ?= npx


help: Makefile
	@echo
	@echo " Choose a command run in generator-goapp:"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo


## publish: Publish npm Package
.PHONY: publish
publish:
	@echo ">> ============= Publish npm Package ============= <<"
	$(NPM) publish --access public


## lint: Check code format
.PHONY: lint
lint:
	@echo ">> ============= Validate js format ============= <<"
	$(NPX) prettier  --check .


## format: Format code
.PHONY: format
format:
	@echo ">> ============= Format js Code ============= <<"
	$(NPX) prettier  --write .


## ci: Run sanity checks
.PHONY: ci
ci: lint
	@echo "\n==> All quality checks passed"


.PHONY: help