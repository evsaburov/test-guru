class Question < ApplicationRecord
  belongs_to :answer

  has_many :tests, dependent: :destroy
end
