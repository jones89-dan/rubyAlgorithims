# Additive Persistence
def additivePersistence(number)
  return 0 if number < 10
  additivePersistenceRecursive(number,1)

end

def additivePersistenceRecursive(number,step)
    sum = 0
    number.to_s.each_char do |digit|
      sum += digit.to_i
    end
    (sum < 10) ? step : additivePersistenceRecursive(sum, step+1)
end


puts additivePersistence(2718)
puts additivePersistence(35786)
