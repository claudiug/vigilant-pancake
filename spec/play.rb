require 'minitest/autorun'


describe 'Person' do
  let(:person) {Person.new('claudiu', 'ion')}
  it 'has a full name' do

    person.full_name.must_equal 'claudiu ion'
  end
end

class Person
  def initialize(first, last)
    @first, @last = first, last
  end

  def full_name
    "#{@first} #{@last}"
  end
end