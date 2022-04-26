class Comment < ApplicationRecord
  belongs_to :user
  has_many :prototypes, dependent: :destroy

  validates :text, presence: true
end
