class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  has_one_attached :cover_photo
  validates :title, :description, :category, :price_per_hour, presence: true
end
