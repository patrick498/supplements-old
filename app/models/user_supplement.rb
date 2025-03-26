class UserSupplement < ApplicationRecord
  belongs_to :supplement
  belongs_to :user

  validates :dose_unit, inclusion: { in: %w[g mg mcg ml IU] }, allow_blank: true
