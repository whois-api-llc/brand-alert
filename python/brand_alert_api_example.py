try:
    from urllib.request import urlopen
except ImportError:
    from urllib2 import urlopen

terms = 'cinema';
password = 'Your brand alert api password'
username = 'Your brand alert api username'
rows = '5'

url = 'http://www.whoisxmlapi.com/brand-alert-api/search.php?'\
    + 'term1=' + terms + '&username=' + username + '&password=' + password + '&rows=' + rows

print(urlopen(url).read().decode('utf8'))