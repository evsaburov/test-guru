class Test < ApplicationRecord
  def self.tests_category(cat)
    tests = Test.joins('join categories c on tests.category_id = c.id').where('c.title = ?', cat).order(id: :desc)
    tests.select('title').to_a
  end
end
