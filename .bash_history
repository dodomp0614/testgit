ls
clear
cat /etc/redhat-release 
uname --help
uname -s
uname -m
uname -o
uname -n
uname -p
uname -i
uname -r
uname -v
uname -a
dmidecode
dmidecode --help
dmidecode | less
yum install -y python
yum update
df -hT
yum install centos-release-scl
yum install rh-python36
yum install -y python3.6.8
dnf install -y python3 python3-pip
rpm -qa | grep python3
pip3 install Django
django-admin --version
python
python3
cd /var/www
ls
mkdir project
cd project/
django-admin startproject django_app
ls
ls django_app/
ls -al  django_app/
cd django_app/
ls
python3 manage.py migrate
ls
ls -al
ls d
ls
ls -al
cat db.sqlite3 
python3 manage.py createsuperusre
python3 manage.py createsuperuser
clear
ls
ls django_app/
history
vi django_app/settings.py 
ls
python3 manage.py runserver
firewalld-cmd --permanent --add-port=8000/tcp
dnf install -y firewall
dnf install -y firewalld
systemctl status firewalld
firewalld-cmd --permanent --add-port=8000/tcp
firewall-cmd --permanent --add-port=8000/tcp
firewall-cmd --help
netstat -npl
netstat -nply
netstat -nplt
firewall-cmd --reload
netstat -nplt
python3 manage.py runserver
vi django_app/settings.py 
python3 manage.py runserver
init 6
systemctl stop firewalld
vi project/django_app/django_app/settings.py 
cd project/django_app/
ls
python3 manage.py runserver
python3 manage.py runserver 0.0.0.0:8000
vi project/django_app/django_app/settings.py 
vi project/django_app/django_app/settings.py
ls
vi django_app/settings.py 
python3 manage.py runserver 0.0.0.0:8000
sudo yum remove docker                   docker-client                   docker-client-latest                   docker-common                   docker-latest                   docker-latest-logrotate                   docker-logrotate                   docker-engine                   podman                   runc
sudo yum install -y yum-utils
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker
ls
cd ~
init 0
ls
ls a-l
clear
ls
touch dockerfile
python --version
python3 --version
docker run python:3.6.8
docker images
docker rmi python:3.6.8
docker status
docker ps
docker ps -a
docker stop python3
docker stop condescending_roentgen
docker rmi python:3.6.8 
docker rmi -rf python:3.6.8 
docker rmi -r python:3.6.8 
docker rmi -f python:3.6.8 
docker images
docker network
docker network ls
history
ls
mv dockerfile Dockerfile
ls
vi Dockerfile 
history
ls
vi project/django_app/django_app/settings.py 
init 0
ls
vi Dockerfile 
ls /usr/src/
ls /usr/src/kernels/
ls
docker run -name jenkins -d -p 8080:8080 -v ~/jenkins:/var/jenkins_home -u root jenkins/jenkins:latest
docker run --name jenkins -d -p 8080:8080 -v ~/jenkins:/var/jenkins_home -u root jenkins/jenkins:latest
dokcer ps
docker ps -a
docker run jenkins
docker run -d 
docker start jenk
docker start jenkins
docker ps
docker exec -it jenkins bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
lssdddddddddddsdwsdㅇㅇㅇㅇㅇㅇㅇddd
dockerdfedfdfedfdddddddd
docker ps
free -m
init 0
