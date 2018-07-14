var http = require('https');
var querystring = require('querystring');

const username = 'Your brand alert api username';
const password = 'Your brand alert api password';
const term1 = 'cinema';
const exclude_term1 = 'movie';
const exclude_term2 = 'online';
const format = 'json';

var url = 'https://www.whoisxmlapi.com/brand-alert-api/search.php';

var params = {
    term1: term1,
    username: username,
    password: password,
    output_format: format,
    exclude_term1: exclude_term1,
    exclude_term2: exclude_term2
};

url = url + '?' + querystring.stringify(params);

http.get(url, function(response) {
    var str = '';
    response.on('data', function(chunk) {
        str += chunk;
    });
    response.on('end', function() {
        console.log(str);
    });
}).end();