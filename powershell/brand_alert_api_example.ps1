$url = 'https://www.whoisxmlapi.com/brand-alert-api/search.php'

$username = 'Your brand alert api username'
$password = 'Your brand alert api password'
$term1 = 'whois'
$rows = 10
$page = 2

$uri = $url`
     + '?term1=' + [uri]::EscapeDataString($term1)`
     + '&username=' + [uri]::EscapeDataString($username)`
     + '&password=' + [uri]::EscapeDataString($password)`
     + '&rows=' + [uri]::EscapeDataString($rows)`
     + '&page=' + [uri]::EscapeDataString($page)

#######################
# Use a JSON resource #
#######################

$j = Invoke-WebRequest -Uri $uri
echo "JSON:`n---" $j.content "`n"

#######################
# Use an XML resource #
#######################

$uri = $uri + "&output_format=xml"

$j = Invoke-WebRequest -Uri $uri
echo "XML:`n---" $j.content