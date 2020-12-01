 @echo off
net start mysql
cd C:\Program Files\MySQL\laitai
set DJANGO_SETTINGS_MODULE=AppName.settings
python -m django runserver 192.168.0.100:8888
