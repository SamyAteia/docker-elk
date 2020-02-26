curl -H "Content-Type: application/json" -X PUT 'http://admin:admin@localhost:9200/my_index/' -d '{
    "settings": {
        "analysis" : {
            "analyzer" : {
                "eng_analyzer" : {
                    "tokenizer" : "standard",
                    "filter" : ["lowercase", "eng_stemmer"]
                },
                "ru_analyzer" : {
                    "tokenizer" : "standard",
                    "filter" : ["lowercase", "ru_stemmer"]
                }
            },
            "filter" : {
                "eng_stemmer" : {
                    "type" : "stemmer",
                    "name" : "english"
                },
                "ru_stemmer" : {
                    "type" : "stemmer",
                    "name" : "russian"
                }
            }
        }
    }
}'
