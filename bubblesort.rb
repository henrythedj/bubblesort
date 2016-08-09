def bubble_sort(nums)
	i = nums.length
	k = 0
	l = 0
	# Passes through array once, sorting lowest to highest
	while k < (i-1)
		puts nums[k]
		puts nums [k+1]
		if nums[k] > nums[k+1]
			hold = nums[k]
			nums[k] = nums[k+1]
			nums[k+1] = hold
			#adds 1 if a sort is made
			l += 1
		end
		k+=1
	end

	if l > 0
		# If a sort is made, re-run the algorithm
		bubble_sort(nums)
		return
	else
		# If no sorts are needed, final answer
		print "Final Answer: #{nums}"
	end
end

y = 0
z = 0
size = 0
nums = []
while y == 0
	puts "How many numbers would you like to sort? (I will round any decimals you devils may try)"
	size = gets.chomp
	if size.to_f.to_s == size
		puts "Why you do this? Make me round?"
		puts "sigh"
		size = size.to_i
	end
	if size.to_i.to_s == size.to_s
		size = size.to_i
		while z < size
			puts "Please enter number #{z+1} (you can put decimals here)."
			n = gets.chomp
			if n.to_f.to_s == n || n.to_i.to_s == n
				n = n.to_f
				nums[z] = n
				z +=1
			else
				puts "That's not a number...or a decimal...."
			end
		end
		puts nums
		y = 1
	else
		puts "That's not a number, you devil"
	end
end

bubble_sort(nums)