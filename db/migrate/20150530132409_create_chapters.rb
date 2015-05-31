class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :thumb
      t.integer :course_id
      t.string :title
      t.timestamps null: false
    end
  end
end
