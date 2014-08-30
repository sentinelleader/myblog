module ViewHelpers

  def latest_post_url
    blog.articles.sort_by(&:date).last.url
  end

  def blockquote(content,author,source=nil,source_link=nil)
    data = '
      <blockquote>
      <p>'+content+'</p>
      <footer>
        <strong>'+author+'</strong>'

    if source && source_link
      data = data + '
        <cite>
          <a href="'+source_link+'">'+source+'</a>
        </cite>
      '
    end

    data = data + '</footer></blockquote>'
    return data
  end

end
