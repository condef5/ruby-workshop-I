require_relative "../lib/fixed_array.rb"
require_relative "../lib/pokemon.rb"
require_relative "../lib/super_fibo.rb"
require "minitest/autorun"

def assert_not_equal(a, b, message)
  opposite_result = !(a == b)
  assert opposite_result, message
end

def assert_greater_than(a, b, message)
  assert_operator a, :>, b, message
end

def assert_lesser_than(a, b, message)
  assert_operator a, :<, b, message
end
