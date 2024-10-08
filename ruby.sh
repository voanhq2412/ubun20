
# https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-20-04
# https://askubuntu.com/questions/1399788/ruby-installation-build-failed-ubuntu-20-04-using-ruby-build-20220324
cd ~
sudo apt update
sudo apt install -y git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev libpq-dev rbenv

# RBENV & RUBY-BUILD
rm -rf .rbenv/
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
echo "" >> ~/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
reset
source ~/.bashrc

# # # # # RUBY
# rbenv install 3.0.0
# rbenv global 3.0.0
# ruby -v

# echo "gem: --no-document" > ~/.gemrc
# gem install bundler
# gem install rails
# rbenv rehash
# bundle install
# rails -v
