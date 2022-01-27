# frozen_string_literal: true
require 'pycall'
spacy = PyCall.import_module('spacy')
nlp = spacy.load("en_core_web_sm")
doc = nlp.("Apple is looking at buying U.K. startup for $1 billion")
puts doc
'You should see the python math evaluation in the console'