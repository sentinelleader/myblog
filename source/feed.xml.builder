xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "#{site_title}"
  xml.subtitle "#{site_slogan}"
  xml.id "#{site_url}"
  xml.link "href" => "#{site_url}/"
  xml.link "href" => "#{site_url}/feed.xml", "rel" => "self"
  xml.updated blog.articles.first.date.to_time.iso8601
  xml.author { xml.name "#{site_author}" }

  blog.articles.each do |article|
    xml.entry do
      xml.title article.title.titlecase_words
      xml.link "rel" => "alternate", "href" => article.url
      xml.id article.url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "#{site_author}" }
      xml.summary article.summary, "type" => "html"
      xml.content article.body, "type" => "html"
    end
  end
end
