
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
