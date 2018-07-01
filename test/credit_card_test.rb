require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'

class CreditCardTest < Minitest::Test
  def test_it_exists
    cc = CreditCard.new("5541808923795240")

    assert_instance_of CreditCard, cc
  end

  def test_it_can_determine_if_a_number_is_valid
    cc = CreditCard.new("5541808923795240")

    assert cc.valid_number?
  end

  def test_it_can_determine_if_a_number_is_not_valid
    cc = CreditCard.new("5541801923795240")

    refute cc.valid_number?
  end

  def test_it_can_split_a_string_of_numbers
    cc = CreditCard.new("345")

    expected = [3, 4, 5]
    actual   = cc.split("345")

    assert_equal expected, actual
  end

  def test_it_can_reverse_a_number
    cc = CreditCard.new("345")

    expected = [5, 4, 3]
    actual   = cc.reverse([3, 4, 5])

    assert_equal expected, actual
  end

  def test_it_can_double_every_other_number_in_an_array
    cc = CreditCard.new("345")

    expected = [5, 8, 3]
    actual   = cc.double([5, 4, 3])

    assert_equal expected, actual
  end

  def test_it_can_sum_numbers_greater_than_9
    cc = CreditCard.new("345")

    expected = [5, 1, 5]
    actual   = cc.sum([5, 10, 14])

    assert_equal expected, actual
  end

  def test_it_can_total_all_numbers_in_an_array
    cc = CreditCard.new("345")

    expected = 11
    actual   = cc.total([5, 1, 5])

    assert_equal expected, actual
  end

  def test_it_can_check_to_see_if_a_number_is_divisible_by_10
    cc = CreditCard.new("345")

    expected = true
    actual   = cc.check_validity(20)

    assert_equal expected, actual
  end
end
