json.videos do
	json.array!(@sections) do |section|
		json.extract! section, :title, :time, :thumb
		json.author section.course.name
		json.date section.date.strftime("%Y-%m-%d")
		json.id section.youku_id
	end
end