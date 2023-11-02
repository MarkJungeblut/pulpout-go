https://www.mongodb.com/docs/manual/core/data-model-design/

Two databases (pulpout-en, pulpout-de). 
They should be synchronous. English is the base language. 

Maybe it's also possible to use collations. Create collations for specific languages and assign them to the 
collections.
