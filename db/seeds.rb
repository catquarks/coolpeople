require 'faker'

19.times do
	Person.create(name: Faker::Name.name, instrument: Faker::Music.instrument, favorite_city: Faker::Pokemon.location)
end

Person.create(name: 'Tami', instrument: 'violin', favorite_city: 'New York City')