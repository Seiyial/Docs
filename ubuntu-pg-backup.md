# Ubuntu (/Linux) Postgresql Backups



## Simplest method: `pg_dump`

```bash
ssh -i ~/.ssh/key_file serveruser@213.213.213.213
# or ssh serverUserIdentity
sudo su - postgres

pg_dump database_name > backup_name.bak
exit
```

On your local machine

```bash
scp serverUserROOTIdentity:/var/lib/postgresql/backup_name.bak ~/MyDocuments/backup_name.bak

psql
=# CREATE DATABASE backup_database;
=# \q

psql -d backup_database -f ~/MyDocuments/backup_name.bak
```

Done!



## Stop using the postgres user

(last time it didn't work tho)

```bash
ssh awesomeserver

# First Time Setup Only
touch ~/.pgpass
echo localhost:5432:database_name:dbuser_name:dbuser_password > ~/.pgpass
chmod 600 ~/.pgpass

# Subsequently just do this!
pg_dump database_name > backup_name.bak
exit
```



