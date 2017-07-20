require 'test/unit'
require_relative '../src/hello.rb'

class HelloTest < Test::Unit::TestCase
  def test_helloTest
    actual = hello
    expected = "hello"

    assert_equal expected, actual
  end
end
