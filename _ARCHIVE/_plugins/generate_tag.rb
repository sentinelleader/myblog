module Jekyll
  module Tags

    class TagIndex < Page
      def initialize(site, base, dir, tag)
        @site = site
        @base = base
        @dir = dir
        @name = 'index.html'

        self.process(@name)
        self.read_yaml(File.join(base, '_layouts'), 'tag.html')
        self.data['tag'] = tag

        tag_title_prefix = site.config['tag_title_prefix'] || 'Tag: '
        self.data['archive_title'] = site.config['owner']['author'] + " " + " #{tag}".titleize
        self.data['title'] = "#{tag}".titleize
      end
    end

    class TagGenerator < Generator
      safe true

      def generate(site)
        dir = site.config['tag_dir'] || 'tag'
        site.tags.keys.each do |tag|
          write_tag_index(site, File.join(dir, tag.gsub(/\s/, "-").gsub(/[^\w-]/, '').downcase), tag)
        end
      end

      def write_tag_index(site, dir, tag)
        index = TagIndex.new(site, site.source, dir, tag)
        index.render(site.layouts, site.site_payload)
        index.write(site.dest)
        site.static_files << index
      end

    end

    # Returns a correctly formatted tag url based on site configuration.
    #
    # Use without arguments to return the url of the tag list page.
    #    {% tag_url %}
    #
    # Use with argument to return the url of a specific catogory page.  The
    # argument can be either a string or a variable in the current context.
    #    {% tag_url tag_name %}
    #    {% tag_url tag_var %}
    #
    class TagUrlTag < Liquid::Tag
      def initialize(tag_name, text, tokens)
        super
        @tag = text
      end

      def render(context)
        base_url = context.registers[:site].config['url'] || '/'
        tag_dir = context.registers[:site].config['tag_dir'] || 'tag'

        tag = context[@tag] || @tag.strip.tr(' ', '-').downcase
        tag = tag.gsub(/\s/, "-").gsub(/[^\w-]/, '').downcase

        tag.empty? ? "#{base_url}/#{tag_dir}/" : "#{base_url}/#{tag_dir}/#{tag}/"
      end
    end
  end
end

Liquid::Template.register_tag('tag_url', Jekyll::Tags::TagUrlTag)
