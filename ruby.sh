
# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04

cd ~
sudo apt update
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

# RBENV and RUBY-BUILD
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git
PREFIX=/usr/local sudo ./ruby-build/install.sh

# RUBY
rbenv install 3.1.0
rbenv global 3.1.0
ruby -v

# RAILS
echo "gem: --no-document" > ~/.gemrc
gem install bundler
gem install rails
rbenv rehash
rails -v