json.videos do
	json.array!(@sections) do |section|
		json.extract! section, :title, :time, :thumb, :ppt_url, :content
		json.chapter section.chapter.title
		json.date section.updated_at.strftime("%Y-%m-%d")
		json.id section.youku
	end
end