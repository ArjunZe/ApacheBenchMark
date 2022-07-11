# https://www.apachelounge.com/download/
# https://httpd.apache.org/docs/current/programs/ab.html
# content.json contains the json you want to post
# -p means to POST it
# -H adds an Auth header (could be Basic or Token)
# -T sets the Content-Type
# -c is concurrent clients
# -n is the number of requests to run in the test
# -l Accept variable document length (use this for dynamic pages)

#POST
abs -p content.json -T application/json -H 'Authorization: Bearer xxxx' -c 10 -n 2000 -l http://myserver/myapi

#GET 

abs -n 1000 -c 10 -k -H "Accept-Encoding: gzip, deflate" http://www.example.com/
