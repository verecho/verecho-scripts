#!/usr/bin/env ruby
require 'rubygems'
require 'faker'
require 'active_support/all'

columns = ["firstname", "lastname", "email", "title", "street", "city", "postal_code", "state", "country", "gender", "birthdate", "start_date"]

genders = ['male','female']

domain = ARGV[0]

puts columns.join(',')
for i in 1..(ARGV[1].to_i)

	firstname = Faker::Name.first_name
	lastname = Faker::Name.last_name
	username = Faker::Internet.user_name("#{firstname} #{lastname}")
	email = "#{username}@#{domain}"
	title = Faker::Name.title
	street = Faker::Address.street_address
	city = Faker::Address.city
	postal_code = Faker::Address.zip_code
	state = Faker::Address.state
	country = Faker::Address.country
	gender = genders.sample
	birthdate = Faker::Date.between(18.years.ago,50.years.ago)
	start_date = Faker::Date.backward(3650)

	puts "\"#{firstname}\"," +
				"\"#{lastname}\"," +
				"\"#{email}\"," +
				"\"#{title}\"," +
				"\"#{street}\"," +
				"\"#{city}\"," +
				"\"#{postal_code}\"," +
				"\"#{state}\"," +
				"\"#{country}\"," +
				"\"#{gender}\"," +
				"\"#{birthdate}\"," +
				"\"#{start_date}\""
end
