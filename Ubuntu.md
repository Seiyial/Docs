# Ubuntu Cheatsheet

## Initial root access

```bash
ssh root@the-ip-address -i /path/to/private_key
```

## Setting up non-root users

### Creating SSH User

Add User
```
adduser Seiyial
```

Delete User
```
deluser Seiyial
```

Give Sudo Perms
```
# on root
usermod -aG sudo Seiyial
```

### Setting up SSH Access for User

```bash
# local machine
ssh-keygen -t rsa -b 4096 -C "some comment about it"
vim /path/to/generated/public_keyfile.pub

# host machine
cd /home/Seiyial
mkdir .ssh
cd ssh
vim authorized_keys
# PASTE inside and leave a newline at the end, and save

# local machine
ssh Seiyial@123.345.456.789 -i /path/to/generated/private_key
```

### Change user
```
su - <username || root>
```

## Base APT Packages
```bash
sudo apt update
# sudo apt upgrade
sudo apt install build-essential
```


## Installing the Languages

### Erlang/Elixir

#### Erlang

```bash
curl https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb --output erlang.deb &&
sudo dpkg -i erlang.deb &&
sudo apt update
sudo apt install build-essential erlang
```

#### Elixir via Version Manager (Kiex)

```bash
curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
# paste the thing into ~/.bashrc, then ssh in again
```

### Node, NPM and Yarn

#### NVM

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# the initialiser should have been pasted into ~/.bashrc, run the next 3 or restart the connection
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```

#### Node & NPM

```bash
nvm ls-remote
nvm ls-remote --lts
nvm install 8.11.3 # Node 8 LTS
nvm install 9.11.2 # Node 9 latest
nvm install 10.6.0
nvm alias 8 8.11.3
nvm alias 9 9.11.2
nvm alias 10 10.6.0
nvm use 10
node -v
```

#### Yarn

```bash
sudo apt remove cmdtest # https://github.com/yarnpkg/yarn/issues/2821
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn
yarn -v

# intelligentpay
sudo apt install libpng-dev
```



## Database

### Postgresql

Install Postgres
```bash
sudo apt-get install postgresql postgresql-contrib
```

(skip this)
Start Postgresql Database Server
```bash
/usr/lib/postgresql/10/bin/pg_ctl -D /var/lib/postgresql/10/main -l logfile start
```

Access PSQL
```bash
# (need postgres Linux usr acct)
sudo -i -u postgres
psql
# ... (\q)
exit

# (more efficient way)
sudo -u postgres psql
```

## Routing Port 80 to our App

### Learn your fucking NGINX Sayhao. And IPTABLES

```bash
sudo iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8873
sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 8873

sudo iptables -t nat -I PREROUTING -p tcp --dport 443 -j REDIRECT --to-ports 8874
sudo iptables -t nat -I OUTPUT -p tcp -o lo --dport 443 -j REDIRECT --to-ports 8874
```






