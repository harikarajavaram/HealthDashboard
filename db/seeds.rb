# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
JSON.parse(File.read("heartrate_try.json")).each do |h|
	puts h
	Heartrate.create time: Time.at(h['x']/1000), value: h['y'], patient_id: 1
end