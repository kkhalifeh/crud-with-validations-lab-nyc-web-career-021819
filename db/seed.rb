require 'faker'


songs = 10.times do
  title = Faker::Music::Phish.song
  artist_name = Faker::Music.band
  genre = Faker::Music.genre
  released = Faker::Boolean.boolean
  release_year = rand(1990...2010)
  Song.create({title: "#{title}", artist_name: "#{artist_name}", genre: "#{genre}", released: released, release_year: release_year}) end
