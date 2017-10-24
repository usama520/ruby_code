def get_area_code_from_hash(hash)
  puts 'Here are the list of cities'
  hash.each {|city| puts city}
  puts
  puts 'Choose the city whoose area code you want us to display'
  city = gets.chomp
  hash.include?(city) ? puts("The code for #{city} is #{hash[city]}") : puts(city + ' is not a city in our record')
  puts
end

loop do
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
  get_area_code_from_hash(dial_codes)
  puts 'Do you want to continue? (Y/N)'
  continue = gets.chomp
  break unless continue[/y/i]
end
