#!/usr/bin/env ruby
require 'rubygems'
require 'faker'
require 'active_support/all'

columns = ["name","relationship","phone_number"]

relationships = ["Spouse","Friend","Father","Mother","Parent","Daughter","Son","Partner","Neighbor"]

for i in 6..107

  name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
  relationship = relationships.sample
  phone_number = Faker::PhoneNumber.phone_number

  puts "INSERT INTO emergency_contacts (employee_id, name, relationship, phone_number, created_at, updated_at) VALUES(#{i},'#{name}','#{relationship}','#{phone_number}', NOW(),NOW());"

end


