class RemoveCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :icon, :string
    remove_column :courses, :url, :string
    remove_column :courses, :youku_id, :string
    remove_column :courses, :unique, :string
  end
end
