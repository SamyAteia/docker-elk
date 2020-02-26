curl -H "Content-Type: application/json" -X PUT 'http://admin:admin@localhost:9200/hunspell_analyzer_index/' -d '{
    "settings": {
        "analysis": {
            "filter": {
                "en_US": {
                    "type": "hunspell",
                    "language": "en-US"
                },
                "ru": {
                    "type": "hunspell",
                    "language": "ru"
                }
            },
            "analyzer": {
                "en_US": {
                    "tokenizer": "standard",
                    "filter": [ "lowercase", "en_US" ]
                },
                "ru": {
                    "tokenizer": "standard",
                    "filter": [ "lowercase", "ru" ]
                }
            }
        }
    }
}'
