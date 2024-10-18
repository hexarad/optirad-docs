.DEFAULT_GOAL := help

help:
	@echo OptiRad documentation site commands
	@echo usage: make [command]
	@echo
	@echo commands:
	@echo "  help     Show available commands."
	@echo "  serve 		Start the web serve to serve the site to a browser."
	@echo "  sync     Sync the _site directory with AWS S3 bucket."
	@echo "  publish  Build the site and sync the data with S3

serve:
	bundle exec jekyll serve

sync:
	aws s3 cp --recursive _site/* s3://optirad-docs/

build:
	bundle exec jekyll build

publish: build
	@$(MAKE) sync
