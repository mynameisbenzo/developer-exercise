class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
	sep =  str.gsub(/\s+/m, ' ').strip.split(" ")
	punc = /[.,?!'\":;-]/ 
	sep.collect! { |word|
		if word.length > 4
			sym = ''
			if punc.match(word[word.length-1])
				sym = word[word.length-1]
			end
			if /[[:upper:]]/.match(word[0])
				word = "Marklar"
			else
				word = "marklar"
			end
			word << sym
		else
			word
		end
	}
	return sep.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
	fib_start = [1,1]
	num = 0
	it = 3
	while it <= nth do
		sum = fib_start[0] + fib_start[1]
		if sum % 2 == 0
			num += sum
		end
		fib_start[0] = fib_start[1]
		fib_start[1] = sum
		it += 1
	end
	return num
  end

end