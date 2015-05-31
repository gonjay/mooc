class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :thumb
      t.integer :chapter_id
      t.string :title
      t.datetime :date
      t.string :time
      t.string :youku_id
      t.text :content
      t.string :ppt_url

      t.timestamps null: false
    end
  end
end
