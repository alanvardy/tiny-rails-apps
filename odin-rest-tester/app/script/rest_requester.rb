# frozen_string_literal: true

# app/script/rest_requestor.rb
require 'rest-client'

puts RestClient.get('http://localhost:3000/users')
puts '------------------------------------------'
puts RestClient.get('http://localhost:3000/users/new')
puts '------------------------------------------'
puts RestClient.get('http://localhost:3000/users/1/edit')
puts '------------------------------------------'
puts RestClient.get('http://localhost:3000/users/1')
puts '------------------------------------------'
