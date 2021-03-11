class Result < ApplicationRecord
  has_one :user, through: :tests, foreign_key: 'respondent_id'
end
