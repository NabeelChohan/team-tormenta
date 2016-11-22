require 'net/http'
result = Net::HTTP.get(URI.parse('http://api.shopstyle.com/api/v2/categories?pid=uid100-36893010-98&format=json'))