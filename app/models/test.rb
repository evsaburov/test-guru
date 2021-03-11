class Test < ApplicationRecord
  belongs_to :category

  belongs_to :user, foreign_key: 'author_id'

  has_many :questions, dependent: :destroy

  has_many :results, dependent: :destroy

  def self.tests_category(category_title)
    joins('join categories on tests.category_id = categories.id')
      .where('categories.title = ?', category_title)
      .order(id: :desc)
      .pluck(:title)
  end
end
