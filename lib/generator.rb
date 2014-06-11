require 'faker'
I18n.enforce_available_locales = false

class Generator

  def initialize(length)
    @length = length
    @companies = companies
  end

  def people
    @length.times.map do
      [Faker::Name.first_name, Faker::Name.last_name]
    end
  end

  def companies
    (@length / 2).times.map do
      Faker::Company.name
    end
  end

  def generate
    i = 0
    people.map.with_index do |person, index|
      result = (person << @companies[i])
      i += 1 if index.odd?
      result
    end
  end

end