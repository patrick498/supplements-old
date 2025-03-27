class Supplement < ApplicationRecord
  has_many :user_supplements

  validates :name, presence: true, uniqueness: true
  validates :with_food, inclusion: { in: %w[with without either] }, allow_blank: true

  def with_food_instruction
    instruction = ''
    case with_food
    when 'with'
      instruction = 'Take with food.'
    when 'without'
      instruction = 'Take without food.'
    when 'either'
      instruction = 'Take with or without food.'
    end
    return instruction
  end
end
