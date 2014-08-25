# Syntax {% link [target(optional)] [url/to/site] [description] %}
#
# Example:
# {% amazon 0307887898 "The Lean Startup" %}

# Output:
# <a href="http://www.amazon.com/dp/0470929820/?tag=noconf-20" target="_blank">Venture Deals</a>
#
module Jekyll
  class Amazon < Liquid::Tag
    @link = nil

    def initialize(tag_name, markup, tokens)
      attributes = ['isbn','title']
      if markup =~ /(?<isbn>\S*\s+)?(?<title>\S.+)/i
        @link = attributes.reduce({}){ |link, attr| link[attr] = $~[attr].strip if $~[attr]; link }
        @link['isbn'].gsub!(/"/, '')
        @link['title'].gsub!(/"/, '')
      end
      super
    end

    def render(context)
      config = context.registers[:site].config
      if @link
        "<a href='http://www.amazon.com/dp/#{@link['isbn']}/?tag=#{config['owner']['amazon_affiliate_id']}' target='_blank'>#{@link['title']}</a>"
      else
        "Error processing input, expected syntax:  {% amazon [10 digit isbn] [title] %}"
      end
    end
  end
end

Liquid::Template.register_tag('amazon', Jekyll::Amazon)
