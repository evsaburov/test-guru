class Test < ApplicationRecord
  def self.tests_category(category_title)
    joins('join categories on tests.category_id = categories.id')
      .where('categories.title = ?', category_title)
      .order(id: :desc)
      .pluck(:title)
  end
end
