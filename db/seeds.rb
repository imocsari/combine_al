# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(name: "Morpheus")
User.create!(name: "Neo")
User.create!(name: "Trinity")

Conference.create!(meeting_date: DateTime.now)



Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:00:00", "%H:%M:%S"), end_time: DateTime.strptime("12:00:15", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:00:22", "%H:%M:%S"), end_time: DateTime.strptime("12:00:30", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:00:30", "%H:%M:%S"), end_time: DateTime.strptime("12:02:00", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:02:05", "%H:%M:%S"), end_time: DateTime.strptime("12:02:49", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:02:59", "%H:%M:%S"), end_time: DateTime.strptime("12:03:00", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:03:35", "%H:%M:%S"), end_time: DateTime.strptime("12:03:44", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:03:55", "%H:%M:%S"), end_time: DateTime.strptime("12:04:40", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:05:34", "%H:%M:%S"), end_time: DateTime.strptime("12:05:56", "%H:%M:%S"))
Audio.create!(user_id: 1, conference_id: 1, start_time: DateTime.strptime("12:06:25", "%H:%M:%S"), end_time: DateTime.strptime("12:06:45", "%H:%M:%S"))

Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:00:15", "%H:%M:%S"), end_time: DateTime.strptime("12:00:20", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:02:04", "%H:%M:%S"), end_time: DateTime.strptime("12:02:05", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:02:50", "%H:%M:%S"), end_time: DateTime.strptime("12:02:59", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:03:10", "%H:%M:%S"), end_time: DateTime.strptime("12:03:33", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:04:50", "%H:%M:%S"), end_time: DateTime.strptime("12:04:55", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:05:26", "%H:%M:%S"), end_time: DateTime.strptime("12:05:34", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:06:00", "%H:%M:%S"), end_time: DateTime.strptime("12:06:22", "%H:%M:%S"))
Audio.create!(user_id: 2, conference_id: 1, start_time: DateTime.strptime("12:06:48", "%H:%M:%S"), end_time: DateTime.strptime("12:07:00", "%H:%M:%S"))

Audio.create!(user_id: 3, conference_id: 1, start_time: DateTime.strptime("12:04:40", "%H:%M:%S"), end_time: DateTime.strptime("12:04:50", "%H:%M:%S"))
Audio.create!(user_id: 3, conference_id: 1, start_time: DateTime.strptime("12:04:58", "%H:%M:%S"), end_time: DateTime.strptime("12:05:25", "%H:%M:%S"))
Audio.create!(user_id: 3, conference_id: 1, start_time: DateTime.strptime("12:07:00", "%H:%M:%S"), end_time: DateTime.strptime("12:07:12", "%H:%M:%S"))
