class Session < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_one :teacher, through: :course
end
