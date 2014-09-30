class	Saver
	def save_file(queue, file_name)
		CSV.open("data/#{file_name}.csv", "w") do |csv|
			csv << ["regdate", "first_name", "last_name", "email_address", "homephone", "street", "city", "state", "zipcode"]
			queue.each do |entry|
				csv << [entry.regdate, entry.first_name, entry.last_name, entry.email_address, entry.homephone, entry.street, entry.city, entry.state, entry.zipcode]
			end
		end
	end
end