class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 },
                   format: { with: /\A[\w-]+\z/, message: 'your name requirements' }
  has_many :articles
  has_many :votes, dependent: :destroy
end
