class Answer < ApplicationRecord
  has_many :questions, dependent: :destroy

  has_many :users
end
