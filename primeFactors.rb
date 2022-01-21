def PrimeNumber?(number)
  a = 2
  while a < ( (number/2) + 1 )
    return false if number % a === 0
    a += 1
  end
  return true
end

def primeFactors(number)
  primeFactor = []
  count = 0
  p = 2
  while (number % 2 == 0)
    number = number/2
    primeFactor.push(p)
  end
  p += 1
  while (number % 3 == 0)
    number = number/3
    primeFactor.push(p)
  end
  primeFactor.push(number)
  return primeFactor
end

puts "****126****"
puts primeFactors(126)
puts "****28*****"
puts primeFactors(28)
puts "****40*****"
puts primeFactors(40)
