
system:
	@echo " ..:: Createting project dirs ::.."
	@echo "assets"
	@echo "backups/dumps"
	@echo "backups/logs"
	@echo "data"
	@echo "var/log"
	@mkdir -p assets
	@mkdir -p backups/dumps
	@mkdir -p backups/logs
	@mkdir -p data
	@mkdir -p var/log

	@echo
	@echo " ..:: Creating virtualenv ::.."
	virtualenv -p python3.6 venv
	
	@echo
	@echo " .:: Activating virtualenv ::.."
	. venv/bin/activate
	
	@echo
	@echo " .:: Downloading all dependencies ::.."
	@pip install -r requirements/base.txt
	
	@echo
	@echo " .:: Deleting redundand packages from virtualenv ::.."
	@pip-sync requirements/base.txt

start:
	circusd --daemon project.ini
