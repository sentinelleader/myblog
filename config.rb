require "lib/helpers/menu_helpers"
require "lib/helpers/view_helpers"
require "lib/helpers/site_helpers"
require 'builder'
require 'slim'

Slim::Engine.disable_option_validator!

helpers MenuHelpers
helpers SiteHelpers
helpers ViewHelpers

set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'
set :css_dir, 'assets/stylesheets'
set :fonts_dir, 'assets/fonts'
set :layouts_dir, 'layouts'
set :partials_dir, 'partials'
# set :relative_links, false

activate :similar

Time.zone = "Pacific Time (US & Canada)"

configure :development do
  activate :livereload, apply_js_live: false
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.method       = :git
  deploy.branch       = 'gh-pages'
end

page "/feed.xml", :layout => false
page "/sitemap.xml", :layout => false
page "/pages/*", :layout => "layout-page"

activate :blog do |b|
  b.sources = "posts/{year}{month}{day}-{title}.html"
  b.permalink = "{year}/{month}/{day}/{title}/index.html"
  b.taglink = "tags/{tag}/index.html"
  b.tag_template = "templates/tag.html"
  b.new_article_template = "lib/templates/article.html.erb"
  b.layout = "layout-blog"
  b.default_extension = ".slim"
  b.custom_collections = {
    category: {
      link: '/categories/{category}/index.html',
      template: 'templates/category.html'
    }
  }
end

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

# after_build do
#   FileUtils.rm_rf ["build/partials"]
# end

# Global
set :site_title, 'NoConformity'
set :site_url, 'http://noconformity.com'
set :site_author, 'Chris Hough'
set :site_description, 'This is the personal blog of Chris Hough. My thoughts and feelings are my own! If you have opinions for my opinions reach out to me, but make sure you read my disclaimer first.'
set :site_slogan, 'A free spirited, sex positive, polish internet brick laying capitalist.'

set :site_owner_name, 'Chris Hough'
set :site_owner_author, 'Chris Hough'
set :site_owner_email, 'chris@noconformity.com'
set :site_owner_twitter, 'chrishough'
set :site_owner_instagram, 'chrishough'
set :site_owner_github, 'chrishough'
set :site_owner_amazon_affiliate_id, 'noconf-20'
set :site_owner_configurations, 'https://github.com/chrishough/myconfigurations'
set :site_owner_cv, 'https://github.com/chrishough/myblog/tree/master/data/resume'

set :browser_msft, '10'
set :browser_google, '32'
set :browser_firefox, '26'
set :browser_safari, '6'

set :startup_url, 'http://lustocracy.com'
set :startup_url_slogan, 'Lustocracy empowers people to own their sexuality by providing a safe, sexy, and authentic community, and by sharing exhilarating and revolutionary experiences. Lustocracy is Modern. American. Sex.'
set :startup_editorial_url, 'http://pov.lustocracy.com'
set :startup_editorial_slogan, 'POV is the official blog of Lustocracy, a technology and media company that facilitates exhilarating and revolutionary sexual expression. Our mission is to empower people to own their sexuality by providing a safe, sexy, and authentic community, and by sharing exhilarating and revolutionary experiences.'
set :startup_product_one, 'Lustocracy Platform'
set :startup_product_two, 'Lustocracy Editorial'

set :google_analytics, 'UA-37324451-1'
set :google_analytics_site, 'noconformity.com'
