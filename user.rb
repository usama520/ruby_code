require 'json'

class User
  attr_accessor :email, :name, :permissions

  def initialize(*args)
    @name = args[0]
    @email = args[1]
    @permissions = User.get_permissions_from_template
  end

  def self.get_permissions_from_template
    file = File.read 'user_permissions_template.json'
    JSON.load(file, symbolize_names: true)
  end

  def save
    json = {email: @email, name: @name, permissions: @permissions}.to_json
    open('users.json', 'a') do |file|
      file.puts json
    end
  end
end

