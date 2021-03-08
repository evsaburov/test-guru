class Question < ApplicationRecord
  has_many :test
  belongs_to :answer
end
