require 'pp'
require_relative 'user'

user = User.new('abid@deltalabs.io', 'Abid')

pp user

user.save
