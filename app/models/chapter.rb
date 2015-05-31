class Chapter < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :course, :title
end
