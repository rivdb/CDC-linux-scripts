#!/bin/bash

# Backup file required for scoring
cp /files/Seabiscuit.jpg ~
cp /files/Seabiscuit.jpg /bin
cp /files/Seabiscuit.jpg /media
cp /files/Seabiscuit.jpg /var
chattr +i /files/Seabiscuit.jpg
