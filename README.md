# DjangoSetUpGuide
### Remember to use Administrator mode in CMD
## SetUp MySQL

1. Download (https://dev.mysql.com/downloads/):
    - Community Server  (Unzip to somewhere)
    - MySQL Workbench    (exe file, install)
    
2. Setup MySQL Server:
    ### Install:
    - CD directory of mysql Server location (" cd /d E:\mysql-8.0.22-winx64\bin ")
    - Run "mysqld --install"
    - Run "mysqld --initialize"
    ### Change Default Root user password:
    - Create a txt file called "mysql-init.txt" in C:\\
        including this line:
      " ALTER USER 'root'@'localhost' IDENTIFIED BY 'yourpassword'; "   (We set 123456  for connection purpose)
    - Run "mysqld --init-file=C:\\mysql-init.txt"
    
    ### Start Server:
    - Run "net start mysql"
    - Run "mysql -u root -p"   
    - Enter Passwords and Bingo!
    - use Workbench, Set up connection and Name it "laitaidb".          (for connection purpose, Since our database's schema called 'laitaidb')
    
    

## Install Django

1. Install Python3
2. Run "pip install django"
3. Run "pip install pymysql"

#### install pip:
1. download tar file  https://pip.pypa.io/
2. CD to its directory
3. Run "python setup.py install"

## Setup Django
1. CD to Django file's directory "cd /d E:\Django\laitai"
2. mac:  export DJANGO_SETTINGS_MODULE=laitai.settings
2. windows:  set DJANGO_SETTINGS_MODULE=laitai.settings
3. python -m django runserver

#### Remeber to Set local computer's IP static to establish local network server



## Create HTML Page in Django?
### =
### Three Steps
1. 'url' register urls
2. 'views' gather data
3. 'template' displays HTML using the data from 'view'
#### URLS.py: 1. laitai/laitai/urls.py:
- Register URL for user to access, for example: xxx.xxx.com/page1 )
``
urlpatterns = [
    path('page1/', views.runExample),  ## views.runExample is calling function "runExample", each time visit 127.1.100:8000/page1, call function runExample
]
``

#### VIEWS.py: 2. laitai/AppName/views.py:
- Get Data from Models, Calculate Values, and
- Give those values/function to templates
``
def runExample(request):
    context          = {}
    context['hello'] = 'Hello World!'
    return render(request, 'example.html', context)
``
Above Function(runExample()) and variables(context['hello']) can be called in templates.

#### HTML: 3. laitai/templates/example.html:
- HTML webPage Templates



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

5. 
- 创建Admin/Superuser:
 python3 -m django createsuperuser
- 更改Django用户密码:
--cd directory
--python manage.py shell
--from django.contrib.auth.models import User  
--user =User.objects.get(username='admin')  
--user.set_password('new_password')  
--user.save()  
 

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

