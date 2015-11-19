#Assignment 5.6 Create Accountability Groups

# Split cohort into accountability groups of 4 or 5 people - or, 3, in a pinch

# Input: array containing a list of names

# Output: accountability groups containing at least 3, and preferably 4 or 5
# people

# Create array containing list of numbers of people in each group
# Create array that will contain arrays of group members

# Assume 4-person groups to start
	# Calculate number of full four-person groups (integer division, list
	# length/4) 
	# Caculate number of extra people after dividing into as many
	# 4-person groups as possible (list length % 4)
	# IF number of extra people <= number of groups of 4
		# THEN change that number of groups of 4 to groups of 5
	# ELSE IF number of extra people < 3
		# THEN change (3-extra) groups of 4 to groups of 3 to create another group
		# of 3
	# ELSE leave final group as group of 3

# Assign names to groups
	# ITERATE over array containing size of groups
		# FOR EACH iteration, assign first size names from main list to group
		# array, removing them from main list

# RETURN array of accountability groups

######## INITIAL SOLUTION

# def assign_groups(list)
	
# 	group_size = 4

# 	group_assignment_array = []

# 	initial_group_number = list.length/group_size
# 	group_size_array = Array.new(initial_group_number, group_size)

# 	leftovers = list.length % group_size

# 	if list.length < group_size
# 		group_size_array.push(list.length)
# 	else
# 		unless leftovers == 0
# 			if leftovers <= initial_group_number
# 				begin
# 					group_size_array[leftovers-1] += 1
# 					leftovers -= 1
# 				end until leftovers == 0
# 			else
# 				if leftovers < 3
# 					begin
# 						group_size_array[2-leftovers] -= 1
# 						leftovers += 1
# 					end	until leftovers == 3
# 				end
# 				group_size_array.push(3)
# 			end
# 		end
# 	end

# 	# print group_size_array

# 	group_size_array.each do |size| 
# 		temp_array = []
# 		(1..size).each do |i|
# 			temp_array.push(list.shift)
# 		end
# 		group_assignment_array.push(temp_array)
# 	end

# 	# print group_assignment_array
# 	group_assignment_array
# end

######## END INITIAL SOLUTION

######## ADD COMPLEXITY

# This program will return the same output every time. I could implement a
# shuffle of the input list before assigning to make the returns random. It
# wouldn't be possible to recover any given list unless the output was stored,
# however. Also, if a single person were to leave the cohort and the method
# was re-run, there's a high likelihood that the accountability groups would
# change dramatically - even without randomizing the input. In this case, it
# would probably be best to save the initial groups (probably in a csv or text
# file), and implement a new method for reshuffling the groups, so as to move
# as few people as possible. At this point, as we're looking at additional
# methods, it would actually probably be best to write a Module for
# accountability groups - with a method for creating groups, methods for
# reading and writing groups to a file, and a method for updating groups

######## Refactored Code with randomizer implemented. Also, made the method nondestructive. Choosing not to implement saving or modification of groups, as I feel that those would require a Class or Module to be properly implemented.

def assign_groups(list)
	
	group_size = 4

	list_clone = list.clone.shuffle!
	initial_group_number = list_clone.length/group_size
	group_size_array = Array.new(initial_group_number, group_size)

	leftovers = list_clone.length % group_size

	if list_clone.length < group_size
		group_size_array.push(list_clone.length)
	else
		unless leftovers == 0
			if leftovers <= initial_group_number
				begin
					group_size_array[leftovers-1] += 1
					leftovers -= 1
				end until leftovers == 0
			else
				while leftovers < 3 do
					group_size_array[2-leftovers] -= 1
					leftovers += 1
				end
				group_size_array.push(3)
			end
		end
	end

	group_size_array.map{ |size|
		list_clone.shift(size)
	}

end


# DRIVER CODE
name_array = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t"]
for i in 1..20
	p assign_groups(name_array.slice(0,i))
end
# p assign_groups(name_array)
p name_array