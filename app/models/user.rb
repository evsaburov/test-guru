class User < ApplicationRecord
  def self.tests_category(cat)
    tests = Test.joins("join categories c on tests.category_id = c.id").where('c.title = ?', cat)
    tests.each { |test| puts test.title }
  end

  def tests_level(level)
    Test.where(author_id: id, level: level)
  end
end
