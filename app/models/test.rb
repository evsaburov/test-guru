class Test < ApplicationRecord
  belongs_to :questions

  has_many :categories, dependent: :destroy

  has_many :results, through: :users, foreign_key: author_id

  def self.tests_category(category_title)
    joins('join categories on tests.category_id = categories.id')
      .where('categories.title = ?', category_title)
      .order(id: :desc)
      .pluck(:title)
  end
end
