# frozen_string_literal: true

require 'sinatra'

get '/' do
  require 'pycall'
  math = PyCall.import_module("math")
  output = math.sin(math.pi / 4) - Math.sin(Math::PI / 4)   # => 0.0
  puts output
  'You should see the python math evaluation in the console'
end

get '/spacy' do
  require 'pycall'
  spacy = PyCall.import_module('spacy')
  nlp = spacy.load("en_core_web_sm")
  doc = nlp("Apple is looking at buying U.K. startup for $1 billion")
  puts doc
  'You should see the python math evaluation in the console'
rescue => e
  e.getMessage
end