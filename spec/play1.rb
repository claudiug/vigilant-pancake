require 'minitest/autorun'

class PersonTest < Minitest::Test
  def test_that_full_name
    p = Person.new('claudiu', 'ion')
    assert_equal p.full_name, 'claudiu ion'
  end
end

class Person
  def initialize(f, n)
    @f, @n = f, n
  end

  def full_name
    "#{@f} #{@n}"
  end
end