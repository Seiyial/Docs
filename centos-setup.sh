
# Install build-essential (Development tools)
sudo yum -y group install "Development Tools"

# Install Erlang
wget https://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
sudo yum -y install esl-erlang

# Install Kiex/Elixir
\curl -sSL https://raw.githubusercontent.com/taylor/kiex/master/install | bash -s
cat '# Kiex - Elixir Verioning' >> ~/.bashrc
cat 'test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"' >> ~/.bashrc

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
kiex install 1.7.1
kiex use 1.7.1
kiex default 1.7.1

# Install Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
cat '' >> ~/.bashrc
cat '# NVM - NodeJS Versioning' >> ~/.bashrc
cat 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
cat '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.bashrc
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

nvm install 10.7.0
nvm install 9.11.3
nvm install 8.11.3
nvm use default

curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
sudo yum install yarn

echo "Completed !"

