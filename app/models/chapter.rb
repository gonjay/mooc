class Chapter < ActiveRecord::Base
  belongs_to :course
  has_many :sections
  validates_presence_of :course, :title
end
