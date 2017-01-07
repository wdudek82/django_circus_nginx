# Project Installation & Deployment

1. git clone [project]

2. cp deploy/project.ini.dist project.ini
3. cp deploy/circus.ini.dist etc/circus.ini
4. cp deploy/nginx.conf.dist etc/nginx.conf
5. change project.ini, nginx.conf

6. create development.py or production.py in backend/conf/
7. change backend.wsgi backend.settings to backend.development or backend.production

8. make (creates project folder, creates virtualenv, delete obsolete packages)

9. create database and db user
10. migrate apps

11. start circusd through make start
12. include etc/nginx.conf in system nginx.conf
13. restart nginx
