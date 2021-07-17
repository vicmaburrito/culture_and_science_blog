module ArticlesHelper
    def number_of_votes(article)
        pluralize(article.votes.size, 'vote')
      end
end