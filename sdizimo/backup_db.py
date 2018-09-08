#!/usr/bin/python
import os
import time


def nice_run(cmd):
    os.system(cmd)


backup_dir = "/home/infobits/db_backups"
os.chdir("%s" % backup_dir)

# remove old files
days = 60
now = time.time()
old = now - days * 24 * 60 * 60

for f in os.listdir(backup_dir):
    path = os.path.join(backup_dir, f)
    if os.path.isfile(path):
        stat = os.stat(path)
        if stat.st_ctime < old:
            print "removing: ", path
            os.remove(path)


#########################
#         GIT           #
#########################
# git add, commit, push
# nice_run("cd " + backup_dir)
# nice_run("pwd")
nice_run("git pull")
nice_run("git add .")
nice_run("git commit -m 'backup_db.py automatic backup'")
nice_run("git push")

# done
nice_run("echo 'Backup complete'")
