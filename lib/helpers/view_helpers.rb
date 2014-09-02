module ViewHelpers

  def latest_post_url
    blog.articles.sort_by(&:date).last.url
  end

  def post_date(article)
    article.date.strftime("%B #{current_article.date.day.ordinalize}, %Y")
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
