# Createting project dirs
mkdir -p var/log
mkdir -p data
mkdir -p assets

# Creating virtualenv
virtualenv -p python3.6 venv

# Activating virtualenv
. venv/bin/activate

# Downloading all dependencies
pip install -r requirements/base.txt

# Synching site-packages in venv with requirements files,
#  and uninstalling redundand packages
pip-sync requirements/base.txt
