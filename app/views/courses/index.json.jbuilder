json.courses do
	json.array!(@courses) do |course|
		json.extract! course, :name, :pop
		json.icon couse.cover
		json.id course.id
	end
end