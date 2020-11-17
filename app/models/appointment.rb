class Appointment < ApplicationRecord
  belongs_to :student
  belongs_to :course
  has_one :teacher, through: :course

  validates :start_time, :end_time, presence: true
end
