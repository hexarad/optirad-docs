.DEFAULT_GOAL := help

help:
	@echo Optirad documentation commands
	@echo "  help         Show available commands."
	@echo "  serve        Start the jekyll server."
	@echo "  publish      Build and upload the site to S3 bucket."

serve:
	bundle exec jekyll serve

publish:
	bundle exec jekyll build
	aws s3 cp --recursive ./_site s3://optirad-docs/
