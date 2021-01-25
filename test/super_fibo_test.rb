require "test_helpers"

class SuperFiboTest # < Minitest::Test
  def test_next
    zero = SuperFibo.new
    one = zero.next
    another_one = one.next

    assert_equal zero.next.value, 1
    assert_equal one.next.value, 1
    assert_equal another_one.next.value, 2
  end

  # hard tests
  # def test_hard
  #   zero = SuperFibo.new
  #   one = zero.next
  #   another_one = one.next
  #   two = another_one.next
  #   three = two.next

  #   assert_equal two.next, three
  #   assert_equal two.next, two.next
  # end
end
