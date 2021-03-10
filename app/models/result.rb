class Result < ApplicationRecord
  has_many :tests, through: :users, foreign_key: respondent_id
end
