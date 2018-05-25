# require gems and classes
require 'bundler' #lets app find gemfile
Bundler.require #loads all gems in gemfile
$: << File.expand_path('../', __FILE__) # adds proj to $LOAD_PATH which
# enables sinatra to find the files
Dir['./app/**/*.rb'].sort.each { |file| require file } # explicitly requires each file in model,view,controller folders

# configure sinatra
# sets root of proj and tells app where erb and CSS files are
set :root, Dir['./app']
set :public_folder, Proc.new { File.join(root, 'assets') }
set :erb, :layout => :'layouts/application'
