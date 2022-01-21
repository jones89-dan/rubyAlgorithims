#Write a function that take 2 parameters being passed, and return true if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2. Otherwise, return false.
def tripleDouble(num1, num2)
  num1 = num1.to_s
  num2 = num2.to_s
  trip = false
  dbl = false

  for i in 0..(num1.length-1)
    if (num1[i] == num1[i + 1] && num1[i] == num1[i + 2])
      trip = true
    end
  end
  for i in 0..(num2.length-1)
    if (num2[i] == num2[i + 1])
      dbl = true
    end
  end

  return trip && dbl
end

puts tripleDouble(451999277, 41177722899)
puts tripleDouble(451927, 41623422345)
puts tripleDouble(123377444553, 123542343)
