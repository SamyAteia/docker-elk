curl -H "Content-Type: application/json" -X GET http://admin:admin@localhost:9200/hunspell_analyzer_index/_analyze -d @hunspell_test_query_en.json
echo '\n\n'
curl -H "Content-Type: application/json" -X GET http://admin:admin@localhost:9200/my_index/_analyze -d @test_query_en.json
echo '\n\n'
curl -H "Content-Type: application/json" -X GET http://admin:admin@localhost:9200/hunspell_analyzer_index/_analyze -d @hunspell_test_query_ru.json
echo '\n\n'
curl -H "Content-Type: application/json" -X GET http://admin:admin@localhost:9200/my_index/_analyze -d @test_query_ru.json
