class CreditCard
  def initialize(number)
    @number = number
  end

  def valid_number?
    split    = split(@number)
    reversed = reverse(split)
    doubled  = double(reversed)
    summed   = sum(doubled)
    totalled = total(summed)
    check_validity(totalled)
  end

  def validation_output
    if valid_number?
      "The number #{@number} is valid"
    else
      "The number #{@number} is invalid"
    end
  end

  def split(string)
    string.chars.map do |number|
      number.to_i
    end
  end

  def reverse(numbers)
    numbers.reverse
  end

  def double(numbers)
    numbers.map.with_index do |number, index|
      if index.odd?
        number * 2
      else
        number
      end
    end
  end

  def sum(numbers)
    numbers.map do |number|
      if number > 9
        number - 9
      else
        number
      end
    end
  end

  def total(numbers)
    numbers.sum
  end

  def check_validity(number)
    number % 10 == 0
  end
end

