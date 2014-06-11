require 'spec_helper'
require_relative '../lib/generator'

describe Generator do
  let (:gen) { Generator.new(100) }
  it "generates 50 unique companies" do
    expect(gen.companies.uniq.size).to eq(50)
  end

  it "generates 100 unique names" do
    expect(gen.people.uniq.size).to eq(100)
  end

  it 'generates 100 unique companies and names in the generator' do
    people = gen.generate.map {|g| "#{g[0]} #{g[1]}"}
    expect(people.uniq.size).to eq(100)
    companies = gen.generate.map {|g| "#{g[2]}"}
    expect(companies.uniq.size).to eq(50)
  end
end