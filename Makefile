usage:
	@echo " blablabla"

dirs:
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

venv:
	@echo
	@echo " ..:: Creating virtualenv ::.."
	virtualenv -p python3.6 venv
	
	#@echo
	#@echo " .:: Activating virtualenv ::.."
	#source venv/bin/activate
	
pip:
	@echo
	@echo " .:: Downloading all dependencies ::.."
	@pip install -r requirements/base.txt
	
	@echo
	@echo " .:: Deleting redundand packages from virtualenv ::.."
	@pip-sync requirements/base.txt

start:
	circusd --daemon project.ini
