class User < ApplicationRecord
  def tests_level(level)
    Test.where(level: level)
        .joins('join questions on questions.test_id = tests.id')
        .joins('join answers on answers.question_id = questions.id')
        .where('answers.respondent_id = ?', id)
        .pluck(:title)
        .uniq
  end
end
