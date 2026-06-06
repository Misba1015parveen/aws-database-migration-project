#!/bin/bash

DATE=$(date +%F)

sudo mysqldump companydb > backup-$DATE.sql

echo "Backup completed successfully"
