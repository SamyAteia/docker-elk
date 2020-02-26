# HUNSPELL examples

Hunspell is a spell checker and morphological analyzer designed for languages with rich morphology and complex word compounding and character encoding.

We're using dictionaries from https://github.com/wooorm/dictionaries

An interesting property of the hunspell stemmer, as can be seen in the example below, is that it can remove prefixes as well as as suffixes. Most algorithmic stemmers remove suffixes only.

Table 1 - English stemming comparing
| Word  |  Standard stemmer | Hunspell  | Comment  |
|---|---|---|---|
| reorganizes  |  reorgan |   organize | Husnpell can remove prefixes as well as as suffixes.  |
| blogged  | blog  |  blogged | Hunspell can't do anything with word, that does not exist in dictionary  |
| blogger  |  blogger |  blogger |   |
| blogger's  |  blogger |  blogger |  Both of stemmers can delete 's |
| blogging  |  blog | blogging  |   |
| blogs  | blog  | blog | Both of stemmers can work with plural form  |

Table 2 - Russian stemming comparing
| Word  |  Standard stemmer | Hunspell  | Comment  |
|---|---|---|---|
| быстро  | быстр  |  быстрый | Standard stemming ignores POS, hunspell choose most frequent part of speech  |
| блогерский  |  блогерск |  блогерский | Hunspell don't know this word and did not even try to find lemma, but standard stemmer just remove ending and it helps to match semantically same word(see next row in table) |
| блогерская  |  блогерск |  блогерская | -  |
| руководить  |  руковод |  руководить | Standard stemming ignores POS, hunspell choose current part of speech  |
| тормоза  |  тормоз | тормоз  | both good  |
| сходить  | сход  | сходить |  word "сход" in common means motion down(like avakanche) but 'сходить' means 'to go'  |
| сход  | сход  | сход | So hunspell is better here  |


One thing is for sure: whenever more than one solution exists for a problem, it means that none of the solutions solves the problem adequately. This certainly applies to stemming — each stemmer uses a different approach that overstems and understems words to a different degree.

Sources:
1) Elasticsearch: The Definitive Guide (p. 359-369)
2) http://sphinxsearch.com/blog/2013/12/05/working-with-the-english-lemmatizer/
3) https://stackoverflow.com/questions/50508049/stemming-and-lemmatization-with-python-nltk-for-both-language-as-english-and-rus
4) http://snowball.tartarus.org/algorithms/russian/stemmer.html
5) https://www.proz.com/forum/translator_resources/260929-looking_for_the_best_hunspell_dictionary_for_british_english.html
