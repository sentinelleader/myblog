class String
  def titlecase_words
    self.split(" ").collect{|word| word[0] = word[0].upcase; word}.join(" ")
  end
end


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

  def post_image(img)
    image_tag("posts/#{img}")
  end

  def post_amazon(title,aid)
    link_to(title, "http://www.amazon.com/dp/#{aid}/?tag=#{site_owner_amazon_affiliate_id}", target: "_blank")
  end

  def post_gist(id, datafile = nil)
    gist = '<code id="gist-' + id + '"'

    if datafile
      gist = gist + 'data-file="' + datafile + '"'
    end

    gist = gist + '></code>'
    %(#{gist})
  end

  def post_youtube(videoid, caption = "")
    intrinsic = ((360.to_f / 480.to_f) * 100)
    padding_bottom = ("%.2f" % intrinsic).to_s  + "%"
    video = %Q{<a class="youtube" href="http://www.youtube.com/watch?v=#{videoid}" data-videoid="#{videoid}" data-width="480" data-height="360">YouTube Video</a>}
    %Q{<figure class="bt-video-container" style="padding-bottom:#{padding_bottom}">#{video}#{caption}</figure>}
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
