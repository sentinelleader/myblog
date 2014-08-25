
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :css_dir, 'assets/stylesheets'
set :fonts_dir, 'assets/fonts'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :minify_html
  activate :asset_hash
  activate :relative_assets
  activate :gzip
  activate :imageoptim do |image_optim|
    image_optim.pngout_options = false # Should disable pngout
  end
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

set :browser_msft, '10'
set :browser_google, '32'
set :browser_firefox, '26'
set :browser_safari, '6'

set :google_analytics, 'UA-37324451-1'
set :google_analytics_site, 'noconformity.com'
