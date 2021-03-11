class Answer < ApplicationRecord
  belongs_to :question

  belongs_to :user, foreign_key: 'respondent_id'
end
