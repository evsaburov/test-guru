class User < ApplicationRecord
  has_many :answers, dependent: :destroy

  has_many :results, through: :tests, dependent: :destroy

  def tests(level)
    Test.where(level: level)
        .joins('join results on results.test_id = tests.id')
        .where('results.respondent_id = ?', id)
        .pluck(:title)
  end
end
