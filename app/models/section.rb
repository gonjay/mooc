class Section < ActiveRecord::Base
  belongs_to :chapter
  validates_presence_of :thumb, :chapter, :title, :time, :youku_id

  def youku
    re = youku_id.match('(?<=id_)(\\w+)')
    re[0] if re
  end
end
