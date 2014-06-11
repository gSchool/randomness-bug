require_relative '../lib/generator'
require 'pp'

class GenerateCompanies
  pp Generator.new(100).generate
end