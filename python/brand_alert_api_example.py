try:
    from urllib.request import urlopen, pathname2url
except ImportError:
    from urllib import pathname2url
    from urllib2 import urlopen

import json


def print_response(txt):
    response_json = json.loads(txt)
    print(json.dumps(response_json, indent=4, sort_keys=True))


username = 'Your brand alert api username'
password = 'Your brand alert api password'
terms = 'cinema'
rows = '5'

url = 'https://www.whoisxmlapi.com/brand-alert-api/search.php'\
    + '?term1=' + pathname2url(terms)\
    + '&username=' + pathname2url(username)\
    + '&password=' + pathname2url(password)\
    + '&rows=' + pathname2url(rows)

print_response(urlopen(url).read().decode('utf8'))
