class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  include PgSearch::Model
  has_one_attached :cover_photo
  validates :title, :description, :category, :price_per_hour, presence: true

   pg_search_scope :search_by_title_and_description_and_category,
    against: [ :title, :description, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
