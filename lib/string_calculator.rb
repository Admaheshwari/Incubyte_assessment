class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?  #I assume if we getting number as empty then return 0

    return numbers.to_i if numbers.length == 1 # return the same no if we have the length eq to 1

    int_numbers = numbers.split(/,|\n/).map(&:to_i) # split the number from comma and make them array of integer
    int_numbers.sum
  end
end