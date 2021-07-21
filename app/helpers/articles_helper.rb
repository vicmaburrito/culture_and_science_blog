module ArticlesHelper
  def author_name(article)
    article.user.username
  end
  def top_image(article)
    url_for(article.try(:image).blob)
  end
end
