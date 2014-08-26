require "lib/helpers/menu_helpers"
helpers MenuHelpers

set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :css_dir, 'assets/stylesheets'
set :fonts_dir, 'assets/fonts'
set :layouts_dir, 'layouts'
set :partials_dir, 'partials'
# set :data_dir
# set :helpers_dir
# activate :relative_assets

configure :build do
  # activate :minify_css
  # activate :minify_javascript
  # activate :minify_html
  # activate :asset_hash
  # activate :relative_assets
  # activate :gzip
  # activate :imageoptim do |image_optim|
  #   image_optim.pngout_options = false # Should disable pngout
  # end
end

after_build do
  # FileUtils.rm_rf ["build/partials"]
end

configure :development do
  activate :livereload, apply_js_live: false
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
end


# Globla Variables
set :site_title, 'NoConformity'
set :site_author, 'Chris Hough'
set :site_description, 'This is the personal blog of Chris Hough. My thoughts and feelings are my own! If you have opinions for my opinions reach out to me, but make sure you read my disclaimer first.'
set :site_slogan, 'A free spirited, sex positive, polish internet brick laying capitalist.'

set :site_owner_name, 'Chris Hough'
set :site_owner_author, 'Chris Hough'
set :site_owner_email, 'chris@noconformity.com'
set :site_owner_twitter, 'chrishough'
set :site_owner_instagram, 'chrishough'
set :site_owner_github, 'chrishough'
set :site_owner_configurations, 'https://github.com/chrishough/myconfigurations'

set :browser_msft, '10'
set :browser_google, '32'
set :browser_firefox, '26'
set :browser_safari, '6'

set :google_analytics, 'UA-37324451-1'
set :google_analytics_site, 'noconformity.com'
