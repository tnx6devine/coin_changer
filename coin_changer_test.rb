require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test
	
def test_assert_that_1_equals_1
	assert_equal(1,1)
end

def test_assert_that_zero_cents_equals_empty_hash
	assert_equal({}, get_change(0))
end

def test_assert_that_one_cent_equals_penny
	assert_equal({"penny" => 1}, get_change(1))
end

def test_assert_that_two_cents_equals_two_pennies
	assert_equal({"penny" => 2}, get_change(2))
end

def test_assert_that_five_cents_equals_nickel
	assert_equal({"nickel" => 1}, get_change(5))
end

def test_assert_that_seven_cents__equals_1_nickel_2_penny
	assert_equal({"nickel" => 1, "penny" =>2}, get_change(7))
end

def test_assert_that_23_cents_equals_2_dime_3_penny
	assert_equal({"dime" => 2, "penny" => 3}, get_change(23))
end
end