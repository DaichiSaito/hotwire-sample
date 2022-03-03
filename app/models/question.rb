class Question < ApplicationRecord
  belongs_to :chapter
  validates :title, presence: true
  validates :content, presence: true
end
