def get_area_code_from_hash(hash, city)
  hash[city]
end

def display_city_from_hash(hash)
  puts 'Here are the list of cities'
  hash.each {|city| puts city}
end

dial_codes = {
  'Lahore' => '042',
  'Karachi' => '021',
  'Islamabad' => '051',
  'Narowal' => '010',
  'Sialkot' => '020',
  'Jaranwala' => '023',
  'Nathiagali' => '024',
  'Muree' => '025',
  'Hunza' => '026',
  'Ferry Meadows' => '027'
}

loop do
  puts 'Do you want to search city codes (Y/N)'
  continue = gets.chomp
  break unless continue[/y/i]
  display_city_from_hash(dial_codes)
  puts
  puts 'Choose the city whoose area code you want us to display'
  city = gets.chomp
  if dial_codes.include?(city)
    code = get_area_code_from_hash(dial_codes, city)
    puts "The code for #{city} is #{code}"
  else
    puts(city + ' is not a city in our record')
  end
end
