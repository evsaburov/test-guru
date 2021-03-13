# frozen_string_literal: true

# class Answer
class Category < ApplicationRecord
  has_many :tests, dependent: :nullify
end
