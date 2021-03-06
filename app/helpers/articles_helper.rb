module ArticlesHelper
  def author_name(article)
    article.user.name
  end

  def top_image(article)
    url_for(article.try(:image).blob)
  end

  def vote_or_unvote_btn(article)
    vote = Vote.find_by(article: article, user: @current_user)
    if vote
      link_to('Unvote!', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
    else
      link_to('Vote!', article_vote_path(article_id: article.id), method: :post)
    end
  end
end
