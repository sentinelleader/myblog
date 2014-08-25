module Jekyll
  module Categories

    class CategoryIndex < Page
      def initialize(site, base, dir, category)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'

        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'category.html')
        self.data['category'] = category

        category_title_prefix = site.config['category_title_prefix'] || 'Category: '
        self.data['archive_title'] = site.config['owner']['author'] + " " + "#{category}".titleize
        self.data['title'] = "#{category}".titleize
      end
    end

    class CategoryGenerator < Generator
      safe true

      def generate(site)
        dir = site.config['category_dir'] || 'category'
        site.categories.keys.each do |category|
          write_category_index(site, File.join(dir, category.gsub(/\s/, "-").gsub(/[^\w-]/, '').downcase), category)
        end
      end

      def write_category_index(site, dir, category)
        index = CategoryIndex.new(site, site.source, dir, category)
        index.render(site.layouts, site.site_payload)
        index.write(site.dest)
        site.static_files << index
      end

    end

    # Returns a correctly formatted category url based on site configuration.
    #
    # Use without arguments to return the url of the category list page.
    #    {% category_url %}
    #
    # Use with argument to return the url of a specific catogory page.  The
    # argument can be either a string or a variable in the current context.
    #    {% category_url category_name %}
    #    {% category_url category_var %}
    #
    class CategoryUrlTag < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
        @category = text
      end

      def render(context)
        base_url = context.registers[:site].config['url'] || '/'
        category_dir = context.registers[:site].config['category_dir'] || 'category'

        category = context[@category] || @category.strip.tr(' ', '-').downcase
        category = category.gsub(/\s/, "-").gsub(/[^\w-]/, '').downcase
        category.empty? ? "#{base_url}/#{category_dir}/" : "#{base_url}/#{category_dir}/#{category}/"
      end
    end
  end
end

Liquid::Template.register_tag('category_url', Jekyll::Categories::CategoryUrlTag)
