require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require "jekyll-assets"

class Jekyll::Site
  attr_accessor :env
end

class Env < Jekyll::Generator
  priority :highest
  def generate(site)
    site.env = ENV['JEKYLL_ENV'] || 'development'

    if site.env == 'production'
     Bundler.require(:production)
    end

  end
end
