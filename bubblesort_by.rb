
def bubble_sort_by(nums)
	loop do
		j = nums.length
		changes = 0
		for i in 0...j-1
			if yield(nums[i], nums[i+1]) > 0
				nums[i], nums[i+1] = nums[i+1], nums[i]
				changes = 1
			end
		end
		if changes == 0
			puts "Final Answer: #{nums}"
			return nums
		end
	end
end



nums2 = ["heyhey", "you", "heheheheeheheheheheheh", "i"]

bubble_sort_by(nums2) do |left, right|
	left.length - right.length
end

