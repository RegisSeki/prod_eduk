class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :name
      t.integer :parts
      t.date :start_date
      t.date :end_date
      t.time :start_hour
      t.time :end_time
      t.string :livestream_link
      t.string :amazon_link
      t.string :studio
      t.belongs_to :author, foreign_key: true

      t.timestamps
    end
  end
end
