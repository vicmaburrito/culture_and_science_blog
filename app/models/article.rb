class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :votes, dependent: :destroy
  validates :title, presence: true
  validates :text, presence: true
  has_one_attached :image
end
