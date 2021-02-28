class User < ApplicationRecord
  def tests_level(level)
    Test.where(level: level)
        .joins('join results on results.test_id = tests.id')
        .where('results.respondent_id = ?', id)
        .pluck(:title)
  end
end
