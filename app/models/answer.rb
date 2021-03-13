# frozen_string_literal: true

# class Answer
class Answer < ApplicationRecord
  belongs_to :question
end
