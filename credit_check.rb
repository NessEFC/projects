# Credit Check Project for Module 1

# Pseudocode:

# 1) Starting at the right (but not counting the check digit), move left through
#    the account number. Double the value of every second digit. If the result
#    is greater than 9, add the digits of that doubling product.
# 2) Sum all the digits in the array, along with the check digit.
# 3) If the total is divisible by zero, the number is valid. Otherwise, invalid.

# Code:

print "Enter your card number: "
card_number = gets.chomp
check_digit = card_number.slice!(-1)
card_number_reverse = []
card_number_reverse = card_number.reverse

integer_array = []
sum_array = 0

card_number.length.times do |n|
  integer_array << card_number_reverse[n].to_i
  integer_array[n] *= 2 if n % 2 == 0
  if integer_array[n] > 9
    digit1, digit2 = integer_array[n].to_s.split("")
    integer_array[n] = digit1.to_i + digit2.to_i
  end
  sum_array += integer_array[n]
end

sum_array += check_digit.to_i
puts sum_array % 10 == 0 ? "The number is valid!" : "The number is invalid!"
