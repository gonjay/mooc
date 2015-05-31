json.courses do
	json.array!(@courses) do |course|
		json.extract! course, :name, :url, :pop, :youku_id, :icon
		json.id course.id
	end
end