class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?  #I assume if we getting number as empty then return 0

    return numbers.to_i if numbers.length == 1 # return the same no if we have the length eq to 1

    delimiter = /,|\n/ 

    if numbers.start_with?("//") # check whether no started with // or not
      separate_number = numbers.split("\n", 2)   # separate the number and unwanted characters
      unwanted_char = separate_number[0][2..-1]
      numbers = separate_number[1]  # assign the first index to numbers
      delimiter = Regexp.escape(unwanted_char) # to escape any special characters
    end

    int_numbers = numbers.split(Regexp.union(delimiter)).map(&:to_i) # split the number from comma and make them array of integer
    
    negative_number = int_numbers.select { |number| number < 0 } # find the negative number and add them into the array

    if negative_number.any?
      raise "negative numbers not allowed #{negative_number.join(', ')}" # raise the runtime error for negative numbers
    end

    int_numbers.sum
  end
end