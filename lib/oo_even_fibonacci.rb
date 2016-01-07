# Implement your object-oriented solution here!
class EvenFibonacci
  def initialize(limit)
    @limit = limit
    @fibonacci_array = [1]
    @fib_sum = 2
  end

  def sum
  	sum = 0
  	append_fib_array
  	@fibonacci_array.each do |even_num|
  		if even_num % 2 == 0
  			sum = sum + even_num
  		end
 	  end
  	return sum
  end

  def append_fib_array
  	while @fib_sum < @limit
			@fibonacci_array << @fib_sum
  		@fib_sum = @fibonacci_array[-1] + @fibonacci_array[-2]
  	end
  	return @fibonacci_array
  end
end