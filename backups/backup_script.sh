#!/bin/bash
# Backup Script for online-shop-db
pg_dump -Fc -f backups/online_shop_db_$(date +%F).dump online_shop_db
echo "Backup completed successfully for online_shop_db!"
