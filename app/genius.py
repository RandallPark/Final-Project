# Dependencies
import requests
import json

# Google developer API key
from config import gkey

# genius_client_id = ''
# genius_secret_id = ''
# genius_client_access_token = gkey

base_url = 'https://api.genius.com/search?q='

g_artist = requests.get(base_url).json()

while True:
            querystring = "http://api.genius.com/search?q=" + urllib2.quote(search_term) + "&page=" + str(page)
            request = urllib2.Request(querystring)
            request.add_header("Authorization", "Bearer " + client_access_token)
            request.add_header("User-Agent",
                               "curl/7.9.8 (i686-pc-linux-gnu) libcurl 7.9.8 (OpenSSL 0.9.6b) (ipv6 enabled)")  # Must include user agent of some sort, otherwise 403 returned