# Add Large Numbers
def addBig(num1, num2)
  num1Arr = [], num2Arr = [], resultNum = []

  num1Arr = num1.split('').map(&:to_i)
  num2Arr = num2.split('').map(&:to_i)

  num1Arr = num1Arr.reverse
  num2Arr = num2Arr.reverse

  differnce = 0
  count = 0
  carryOver = 0
  result = 0

  ##### Number 1 is smaller #####
  if (num1Arr.length < num2Arr.length)
    differnce = num2Arr.length - num1Arr.length
  end

  for i in 0..(differnce-1)
    num1Arr.push(0)
  end

  ##### Number 2 is smaller #####
  if (num2Arr.length < num1Arr.length)
    differnce = num1Arr.length - num2Arr.length
  end

  for i in 0..(differnce-1)
    num2Arr.push(0)
  end

  #### Add the numbers on place at a time w/ carry over ####
  for i in 0..(num1Arr.length-1)
    result = num1Arr[i] + num2Arr[i]

    if (carryOver != 0)
      result += carryOver;
      carryOver = 0;
    end

    if (result >= 10)
      carryOver = result / 10;
      result = result % 10;
    end

    resultNum.push(result)

  end

  resultNum = resultNum.reverse
  puts resultNum.join('').to_s
  return resultNum.join('').to_s

end

a = "25256262652562";
b = "8790087923478963673763168867989797";

puts addBig(a, b) == "8790087923478963673788425130642359"
