curl -H "Content-Type: application/json" -X GET 'http://admin:admin@localhost:9200/hunspell_analyzer_index/_analyze' -d '{
"analyzer" : "en_US",
"text" : "Hello, its test for hunspell stuff"
}'
