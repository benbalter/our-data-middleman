require "middleman-smusher"
activate :directory_indexes
activate :sprockets
#activate :relative_assets

ignore "javascripts/models/*"
ignore "javascripts/views/*"
ignore "javascripts/router*"
ignore "stylesheets/bootstrap*"

configure :build do
  set :api_url, 'http://our-data.herokuapp.com'
  set :http_prefix, "/our-data-middleman" 
  activate :minify_css
  activate :minify_javascript
  activate :automatic_image_sizes
  activate :asset_hash
  activate :smusher
end

configure :development do
  set :api_url, "http://localhost:3000"
  set :http_prefix, "/" 
  activate :livereload
end

after_configuration do
  sprockets.append_path File.join(File.expand_path(File.dirname(__FILE__)), 'source/templates')
  ignore "templates/*"
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.after_build = true
end
