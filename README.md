# DjangoSetUpGuide

## SetUp MySQL

1. Download (https://dev.mysql.com/downloads/):
    - Community Server
    - MySQL Workbench
    
2. Setup MySQL Server:
    ### Install:
    - CD directory of mysql Server location (" cd \d E:\mysql-8.0.22-winx64\bin ")
    - Run "mysqld --initialize"
    - Create a txt file called "mysql-init.txt" in C:\\
        including this line:
      " ALTER USER 'root'@'localhost' IDENTIFIED BY 'yourpassword'; "
    - Run "mysqld --init-file=C:\\mysql-init.txt"
    
    ### Start Server:
    - Run "net start mysqld"
    - Run "mysql -u root -p"   (Or using Workbench)
    - Enter Passwords and Bingo!
    
    

## SetUp Django

1. Install Python3
2. Run "pip install django"
3. Run "pip install pymysql"

<<<<<<< Updated upstream

#### Remeber to Set local computer's IP static to establish local network server
=======
# Useful Commands:

Django

Get IP address
ipconfig getifaddr en0
traceroute google.com

Run Server On local IP address
python3 -m django runserver 192.168.0.101:8080 --insecure

Use Python3 -m Django xxxxxx!

Settings：

export DJANGO_SETTINGS_MODULE=mysite.settings
export DJANGO_SETTINGS_MODULE=laitai.settings

check version:
python -m django --version

Create:
python3 -m django startproject mysite 

Run:
cd mysite
- [ ] python3 -m django runserver

Change IP/Port:
python3 -m django runserver 0:8080

Apply Migrate to newly set up DataBase:
https://medium.com/@omaraamir19966/connect-django-with-mysql-database-f946d0f6f9e3
python3 -m django migrate  

Did you install mysql?
- pip install pymysql
- Add following code in ‘__int__.py’ in the base:
 import pymysql
 pymysql.version_info = (1, 4, 0, "final", 0)
 pymysql.install_as_MySQLdb()



Steps of Making new Changes:

1. Change your models (in ``models.py``).

2. Install an App called “polls” into Django
    1. python3 -m django startapp polls
    2. python3 -m django makemigrations polls
    3. Add settings.py: INSTALLED_APPS:
  'laitaiapp.apps.LaitaiappConfig',

 See How SQL runs for the above command for “polls”
 python3 -m django sqlmigrate polls 0001

3. Apply Migrate
 python3 -m django migrate 

4.  Enable Python Shell
 python3 -m django shell 

 1. Import the model classes we just wrote.
  from polls.models import Choice, Question  
    2. Get All “Questions”                                                    Question.objects.all()
    3. Import new Questions
        1. from django.utils import timezone
        2. q = Question(question_text="What's new?", pub_date=timezone.now())
    4. Save
        1. q.save()
    5. Search:
        1. Question.objects.all()
        2. Question.objects.filter(id=1)
        3. Question.objects.filter(question_text__startswith='What')

5. 创建Admin/Superuser
 python3 -m django createsuperuser

6. Find Django Path
    1. python3 -c "import django; print(django.__path__)"

7. 所有Template放在Base Directory的方法
 1. Mysite->Settings.py->TEMPLATES->   
  DIRS': [BASE_DIR / 'templates'],
 2. 所有文件放在base的templates里面

8. Change Admin 的Header：
 复制default template: base_site.html 到base， 修改里面 的内容

9. 用已存在databse Existing到models:
  - 创建新的djangoproject 
 - set up databse in settings.py
 - 使用以下代码：
 Set up settings with existing database
 python3 -m django inspectdb
 python3 -m django inspectdb > models.py



>>>>>>> Stashed changes
