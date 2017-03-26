class Person < ApplicationRecord
	validates :name, uniqueness: true
end
