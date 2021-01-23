require "test_helpers"

class FixedArrayTest # < Minitest::Test 
  def test_behavior
    fixed_array = FixedArray.new(5)

    assert_nil fixed_array[3]
    assert_equal fixed_array.to_a, ([nil] * 5)

    fixed_array[3] = "a"
    assert_equal fixed_array[3], "a"
    assert_equal fixed_array.to_a, [nil, nil, nil, "a", nil]

    fixed_array[1] = "c"
    assert_equal fixed_array[1], "c"
    assert_equal fixed_array.to_a, [nil, "c", nil, "a", nil]

    fixed_array[4] = "d"
    assert_equal fixed_array[4], "d"
    assert_equal fixed_array.to_a, [nil, "c", nil, "a", "d"]
    assert_equal fixed_array.to_s , '[nil, "c", nil, "a", "d"]'

    assert_equal fixed_array[-1], "d"
    assert_equal fixed_array[-4], "c"
  end

  def test_handle_index_error
    fixed_array = FixedArray.new(5)

    assert_raises IndexError do
      fixed_array[6]
    end
  end
end
