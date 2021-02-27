class User < ApplicationRecord
  def tests_level(level)
    Test.where(level: level, respondent_id: id).pluck(:title)
  end
end
