extends Node

var names_array: Array = ["Alice", "Bob", "Charlie", "Diana", "Eve", "Frank", "Grace", "Hank"]
var people_array: Array[People] = []

# Function to generate random People resources
func generate_people(num_people: int):
	people_array.clear() # Clear the array before generating new entries

	for i in range(num_people):
		var new_person = People.new() # Create a new People resource

		# Assign random values
		new_person.name = names_array[randi() % names_array.size()]
		new_person.age = randi_range(12, 99)
		new_person.height = randi_range(100, 190)
		new_person.weight = randi_range(50, 200)

		# Debug: Print details of the new person
		print("Generated Person: ", new_person.name, ", Age: ", new_person.age, 
			  ", Height: ", new_person.height, ", Weight: ", new_person.weight)

		# Add the new person to the array
		people_array.append(new_person)


# Example of generating and saving people
func _ready():
	generate_people(1)  # Generate 5 random people
