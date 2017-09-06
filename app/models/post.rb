class Post < ApplicationRecord
  extend FriendlyId
  acts_as_taggable
  friendly_id :title, :use => :history
  default_scope -> { order(created_at: :desc)}

  validates :title, presence: true, length:{ minimum: 5},  uniqueness: { case_sensitive: false}
  validates :body, presence: true

end
