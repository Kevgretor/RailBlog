class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true

  scope :last_ten, -> { order(created_at: :desc).limit(10) }
end
