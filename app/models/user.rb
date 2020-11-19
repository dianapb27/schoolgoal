class User < ApplicationRecord
  has_many :owned_courses, foreign_key: :teacher_id, class_name: "Course", dependent: :destroy
  has_many :appointments, dependent: :destroy, foreign_key: :student_id
  has_many :courses, through: :appointments

  validates :last_name, presence: true
  validates :first_name, presence: true
  has_one_attached :profile_photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
