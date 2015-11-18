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
		# array

# RETURN array of accountability groups

def assign_groups(list)
	
	group_size = 4

	group_assignment_array = []

	initial_group_number = list.length/group_size
	group_size_array = Array.new(initial_group_number, group_size)

	leftovers = list.length % group_size

	if list.length <= group_size
		group_size_array.push(list.length)
	else
		unless leftovers == 0
			if leftovers <= initial_group_number
				begin
					group_size_array[leftovers-1] += 1
					leftovers -= 1
				end until leftovers == 0
			else
				if leftovers < 3
					begin
						group_size_array[2-leftovers] -= 1
						leftovers += 1
					end	until leftovers == 3
				end
				group_size_array.push(3)
			end
		end
	end

	print group_size_array

end

for i in 1..20
	assign_groups(Array.new(i))
end