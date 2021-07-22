class User < ApplicationRecord
  validates :username, presence: true, length: { maximum: 15 },
                       format: { with: /\A[\w-]+\z/, message: 'your name requirements' }
  has_many :articles
  has_many :votes, dependent: :destroy

  def votes?
    article.votes.where(user_id: id).any?
  end
end
