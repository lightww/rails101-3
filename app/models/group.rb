class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  has_many :group_relaitionships
  has_many :members, through: :group_relaitionships, source: :user

  validates :title, presence: true
end
