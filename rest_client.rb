require 'rest-client'

class Search
  attr_accessor :query


  def search
    puts "What are you looking for?"
    query = gets.chomp.split.join("+")
  end

  def search_results(query)
    response = RestClient.get('https://www.google.com/search?#{query}')
  end

  def display_results
    puts " Code: #{@response.code}"
    puts " Cookies #{response.cookies}"
    puts " Headers #{response.headers}"
    puts " Body: #{response.body}"
  end

end

