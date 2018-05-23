class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :article, presence: true

  scope :last_ten, -> { order(created_at: :desc).limit(10) }
end
