# Makefile for the shell script project

# Variables
ZIP_FILE = solution_package.zip
FILES = sed_name_replace.sh awk_name_replace.sh grep_name_match.sh inputfile.txt README.md Makefile

# Target to build a zip package of the solution
build:
	@echo "Building the solution package..."
	zip -r $(ZIP_FILE) $(FILES)
	@echo "Package created: $(ZIP_FILE)"

# Target to deploy (commit and push) the solution package to GitHub
deploy:
	@echo "Deploying the solution package to GitHub..."
	git add $(ZIP_FILE)
	git commit -m "Added solution package"
	git push origin main
	@echo "Solution package deployed to GitHub."

# Target to display help information
help:
	@echo "Cesar Altamirano - Makefile Project"
	@echo "Usage:"
	@echo "  make build     - Create a zip package of the solution"
	@echo "  make deploy    - Deploy (commit and push) the solution package to GitHub"
	@echo "  make help      - Display this help information"
