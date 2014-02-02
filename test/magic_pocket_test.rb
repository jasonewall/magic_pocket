require 'magic_pocket'
require 'test/unit'

class MagicPocketTest < Test::Unit::TestCase
  def test_stuff!
    pocket = MagicPocket::Hash.new
    pocket.stuff! :key, 'value'
    assert_equal 'value', pocket[:key], 'Should add the value to itself'
  end

  def test_double_stuff!
    pocket = MagicPocket::Hash[:key => 'value1']
    pocket.stuff! :key, 'value2'
    assert_equal %w(value1 value2), pocket[:key], 'Should convert to an array'
  end

  def test_stuff_when_already_array
    pocket = MagicPocket::Hash[:key => %w(value1 value2)]
    pocket.stuff! :key, 'value3'
    assert_equal %w(value1 value2 value3), pocket[:key], 'Should not layer array'
  end
end
