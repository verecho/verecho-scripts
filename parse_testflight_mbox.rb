#! /usr/bin/env ruby
require 'mbox'
require 'CSV'

if ARGV.length < 2
	abort 'You have to pass the mbox and output file name.'
end

CSV.open(ARGV[1],"w") do |file|
	file << ["to", "link"]

	Mbox.open(ARGV.shift).each {|mail|
		to = mail.headers['to']
		body = mail.content.first.to_s
	 	match = /<a href=3D'(https:\/\/beta.itunes.apple.com\/v1\/invite\/.*\r\n.*\r\n.*)'/.match(body)
		link = match.captures.first.gsub("=\r\n","")
		# puts link
		# puts "----------------------------------------------------------"
		file << [to,link]
	}

end
