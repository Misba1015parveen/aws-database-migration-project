# AWS Database Migration Project

## Overview

This project demonstrates database migration from a VMware Ubuntu server to an AWS EC2 Ubuntu instance using MySQL.

## Technologies Used

* AWS EC2
* Ubuntu Linux
* MySQL
* VMware Workstation
* SCP
* SSH Key Pair

## Project Steps

1. Created Ubuntu Virtual Machine using VMware.
2. Installed MySQL and created a database.
3. Added employee records into the database.
4. Created a database backup using mysqldump.
5. Launched an AWS EC2 Ubuntu instance.
6. Installed MySQL on EC2.
7. Transferred the backup file using SCP.
8. Restored the database on EC2.
9. Verified the migrated records successfully.

## Commands Used

### Database Backup

sudo mysqldump companydb > companydb.sql

### Transfer Backup

scp -i db-migration-key.pem companydb.sql ubuntu@EC2-IP:/home/ubuntu/

### Restore Database

sudo mysql companydb < companydb.sql

## Result

Successfully migrated the MySQL database from VMware Ubuntu Server to AWS EC2 Ubuntu Instance and validated all records after migration.
