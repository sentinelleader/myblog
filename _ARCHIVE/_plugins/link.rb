# Syntax {% link [target(optional)] [url/to/site] [description] %}
#
# Example:
# {% link http://www.portlandmercury.com/portland/do-the-hump/Content?oid=10934397 "The Portland Mercury website" %}
# {% link _self http://www.portlandmercury.com/portland/do-the-hump/Content?oid=10934397 "The Portland Mercury website" %}
#
# Output:
# <a href='http://www.portlandmercury.com/portland/do-the-hump/Content?oid=10934397' target='_blank'>The Portland Mercury website</a>
# <a href='http://www.portlandmercury.com/portland/do-the-hump/Content?oid=10934397' target='_self'>The Portland Mercury website</a>
# 
# 
module Jekyll
  class Link < Liquid::Tag
    @link = nil
    @@target = '_blank'

    def initialize(tag_name, markup, tokens)
      attributes = ['src','description','target']

      if markup =~ /(?<target>\S.*\s+)?(?<src>(?:https?:\/\/|\/|\S+\/)\S+)(?<description>\s+.+)/i
        @link = attributes.reduce({}){ |link, attr| link[attr] = $~[attr].strip if $~[attr]; link }
        @link['src'].gsub!(/"/, '')
        @link['description'].gsub!(/"/, '')  

        if @link['target'].to_s.strip.length != 0   
          @@target = @link['target']
        end 

      end
      super
    end

    def render(context)
      if @link
        "<a href='#{@link['src']}' target='#{@@target}'>#{@link['description']}</a>"
      else
        "Error processing input, expected syntax:  {% link [target(optional)] [url/to/site] [description] %}"
      end
    end
  end
end

Liquid::Template.register_tag('link', Jekyll::Link)
