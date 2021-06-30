#!/usr/bin/expect

# need start mysql service 
# how to use  
# mysql 5.7.34 
# apt-get install except      chmod +x mysql_init.sh   ./mysql_init.sh     or    expect    mysql_init.sh
spawn  mysql_secure_installation


expect {
             "VALIDATE PASSWORD PLUGIN can be used to test passwords" { send "n\r"; exp_continue }
             "New password" { send "123456\r"; exp_continue }
             "Re-enter new password" { send "123456\r"; exp_continue }
             "Remove anonymous users?" { send "y\r"; exp_continue }
             "Disallow root login remotely" { send "n\r"; exp_continue }
             "Remove test database and access to it" { send "Y\r"; exp_continue }
             "Reload privilege tables now" { send "Y\r"; exp_continue }
        }


