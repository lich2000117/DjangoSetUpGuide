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
4. 
