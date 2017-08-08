class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, :use => :history

  has_many :comments, dependent: :destroy
  validates :title, presence: true, length:{ minimum: 5},  uniqueness: { case_sensitive: false}
  validates :body, presence: true
end
