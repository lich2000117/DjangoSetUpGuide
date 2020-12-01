@echo off



::This File Automatically starts MYSQL Server
::Start Django Server either on local computer or local network


net start mysql
cd /d E:\Project\Django\laitai
set DJANGO_SETTINGS_MODULE=laitai.settings

python -m django runserver 192.168.0.105:8000