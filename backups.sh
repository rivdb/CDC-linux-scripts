#!/bin/bash

# Backup file required for scoring
cp /files/Seabiscuit.jpg ~
cp /files/Seabiscuit.jpg /bin
cp /files/Seabiscuit.jpg /media
cp /files/Seabiscuit.jpg /var

cp /etc/vsftpd.conf /bin
cp /etc/vsftpd.conf /media
cp /etc/vsftpd.conf /var

cp /etc/ssh /media


chattr +i /files/Seabiscuit.jpg
