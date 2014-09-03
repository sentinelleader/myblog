module ViewHelpers

  def latest_post_url
    blog.articles.sort_by(&:date).last.url
  end

  def post_date(article)
    article.date.strftime("%B #{article.date.day.ordinalize}, %Y")
  end

  def post_short(article)
    article.body.split(/<!--more-->/).first
  end

  def post_vimeo(id)
    %(<iframe
      width="500"
      height="281"
      src="http://player.vimeo.com/video/#{id}"
      frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen>
      </iframe>)
  end

  def build_categories(articles)
    categories = []
    articles.each do |article|
      category = article.metadata[:page]['category']
      unless categories.include? category
        categories.push(category)
      end
    end
    return categories
  end

end
