class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  # has_one_attached :cover_photo

end
