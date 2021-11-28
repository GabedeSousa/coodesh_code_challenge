class Article < ApplicationRecord
  validates :featured, presence: true
  validates :title, presence: true
  validates :url, presence: true
  validates :imageUrl, presence: true
  validates :newsSite, presence: true
  validates :summary, presence: true
  validates :publishedAt, presence: true
  validates :launches, presence: true
  validates :events, presence: true
end
