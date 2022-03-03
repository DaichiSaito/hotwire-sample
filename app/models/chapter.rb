class Chapter < ApplicationRecord
  belongs_to :curriculum
  has_many :questions
end
