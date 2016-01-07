# Implement your procedural solution here!
def even_fibonacci_sum(limit)
	fib_array = [1,2]
	fib_sum = 3
	sum = 0
	
	while fib_sum < limit
		fib_array << fib_sum
  	fib_sum = fib_array[-1] + fib_array[-2]
  end
  
  fib_array.each do |even_num|	
  	if even_num % 2 == 0
  		sum = sum + even_num
  	end
  end
  return sum
end