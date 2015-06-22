
require "bundler/capistrano"
set :application, "depot_app"
set :repository,  "git://github.com/rk-panchal/guddu.git"
set :scm, :git
set :user, "rk-panchal"
set :use_sudo, true
set :scm_passphrase, "string"
set :branch, "master"
set :deploy_to, "/var/www/#{depot_app}"
set :keep_releases, 3
ssh_options[:paranoid] = false
ssh_options[:port] = 22
set :default_environment, {
  'PATH' => "/home/admin/.rvm/gems/ruby-1.9.3-p125/bin:/home/admin/.rvm/bin:/home/admin/.rvm/rubies/ruby-1.9.3-p125/bin:$PATH",
  'RUBY_VERSION' => 'ruby 1.9.3',
  'GEM_HOME'     => '/home/admin/.rvm/gems/ruby-1.9.3-p125',
  'GEM_PATH'     => '/home/admin/.rvm/gems/ruby-1.9.3-p125/gems',
  'BUNDLE_PATH'  => '/home/admin/.rvm/gems/ruby-1.9.3-p125/bin'  # If you are using bundler.
}   

server "127.0.0.1", :web, :app, :db, :primary => true