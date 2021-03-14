class User < ApplicationRecord
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  def tests_with_level(level)
    Test.where(level: level)
        .joins(:results)
        .where(results: { user_id: id } )
        .pluck(:title)
  end
end
