require 'erb'
require 'json'
require 'net/http'
require 'uri'
require 'yaml' # only needed to print the returned result in a very pretty way

########################
# Fill in your details #
########################
username = 'Your brand alert api username'
password = 'Your brand alert api password'

term1 = 'cinema'
exclude_term1 = 'movie'
exclude_term2 = 'online'

#######################
# Use a JSON resource #
#######################
format = 'json'
url = 'https://www.whoisxmlapi.com/brand-alert-api/search.php' \
      '?term1=' + ERB::Util.url_encode(term1) +
      '&username=' + ERB::Util.url_encode(username) +
      '&password=' + ERB::Util.url_encode(password) +
      '&output_format=' + ERB::Util.url_encode(format) +
      '&exclude_term1=' + ERB::Util.url_encode(exclude_term1) +
      '&exclude_term2=' + ERB::Util.url_encode(exclude_term2)

# Open the resource
buffer = Net::HTTP.get(URI.parse(url))

# Parse the JSON result
result = JSON.parse(buffer)

# Print out a nice informative string
puts "JSON:\n" + result.to_yaml + "\n"