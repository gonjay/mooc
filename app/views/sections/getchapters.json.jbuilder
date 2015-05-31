json.chapters do
	json.array!(@chapters) do |chapter|
		json.extract! chapter, :title, :thumb
		json.course chapter.course.name
		json.date chapter.updated_at.strftime("%Y-%m-%d")
		json.id chapter.id
	end
end