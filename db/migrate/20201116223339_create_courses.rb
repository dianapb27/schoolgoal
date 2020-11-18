class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.references :teacher, null: false, foreign_key: { to_table: :users }
      t.string :category
      t.integer :price_per_hour

      t.timestamps
    end
  end
end
