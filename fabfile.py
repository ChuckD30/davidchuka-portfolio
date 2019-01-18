import os
from fabric.api import local, run, cd, env, sudo, settings, lcd
from fabric.decorators import hosts
env.hosts = ['root@davidchuka.me']
code_dir = '/home/davidchuka/davidchuka-theproject'

def show_logs_django():
    print("showing django logs")
    with cd(code_dir):
        run('docker-compose logs --follow django')
            
def show_logs_nginx():
    print("showing nginx logs")
    with cd(code_dir):
        run('docker-compose logs --follow nginx')

def re_deploy():
    with cd(code_dir):
        run('git pull')
        run('docker image prune -f')
        run('docker-compose build --no-cache django')
        run('docker-compose build --no-cache nginx')
        run('docker-compose kill django nginx')
        run('docker-compose rm -f django nginx')
        run('docker-compose up -d nginx')

def django_shell():
    with cd(code_dir):
        run('docker-compose exec django sh')

def backup_db_to_dropbox():
    with cd(code_dir):
        run('chmod +x database-backup.sh')
        run('./database-backup.sh')