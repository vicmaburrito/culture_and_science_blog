module ArticlesHelper
  def number_of_votes(article)
    pluralize(article.votes.size, 'vote')
  end

  def top_image(article)
    url_for(article.try(:image).blob)
  end
end
