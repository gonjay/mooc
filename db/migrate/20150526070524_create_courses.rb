class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :url
      t.integer :pop
      t.integer :user_id
      t.string :youku_id
      t.string :unique
      t.string :icon
      t.string :cover
      t.datetime :start_time
      t.string :intro

      t.timestamps null: false
    end
  end
end
