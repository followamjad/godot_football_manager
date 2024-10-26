extends Node2D

var first_name_list: Array[String] = ["Aaron","Ashraf", "Amjad", "Abdallah", "Abel", "Abraham", "Adil", 
	"Aditya", "Aidan", "Akira", "Alberto", "Aldo", "Kwasi", "Kabelo", "Shaka", "Musa", "Kehinde", "Ahmed",
	"Alex", "Alexander", "Alfred", "Ali", "Alois", "Alonzo", "Anderson", "Andreas", "Andrew", "Anthony", 
	"Antonio", "Arjun", "Armand", "Aron", "Arthur", "Asher", "Aslam", "Athan", "August", "Aurelius", 
	"Barack", "Barney", "Bastian", "Beckett", "Ben", "Benjamin", "Bernard", "Bill", "Bobby", "Brandon", 
	"Brendan", "Brian", "Bruce", "Bryan", "Caleb", "Cameron", "Carl", "Carlos", "Carter", "Caspian", 
	"Chad", "Charles", "Charlie", "Chase", "Chris", "Christopher", "Clement", "Clifford", "Cole", "Colin", 
	"Connor", "Cooper", "Damon", "Daniel", "David", "Dean", "Derek", "Devon", "Diego", "Dominic", 
	"Donovan", "Dorian", "Dustin", "Dylan", "Eamon", "Earl", "Edgar", "Eduardo", "Edward", "Elijah", 
	"Emil", "Emilio", "Eric", "Ethan", "Eugene", "Evan", "Fabian", "Felix", "Fernando", "Finn", 
	"Fletcher", "Florent", "Frank", "Gabriel", "Gavin", "Geoffrey", "George", "Gideon", "Gino", 
	"Graham", "Gregory", "Hank", "Harold", "Harrison", "Henry", "Hugo", "Hunter", "Ibrahim", "Ilan", 
	"Ilias", "Isaac", "Ismael", "Ivan", "Jace", "Jack", "Jackson", "Jacob", "James", "Jasper", 
	"Jason", "Jeffrey", "Jens", "Jeremy", "Jesse", "Jett", "Jorge", "Joseph", "Joshua", "Juan", 
	"Julian", "Kaden", "Kai", "Kamal", "Karl", "Keanu", "Kevin", "Kiran", "Kyle", "Landon", 
	"Leo", "Leon", "Leonard", "Liam", "Lucas", "Luis", "Luka", "Malcolm", "Manuel", "Marcus", 
	"Marvin", "Mason", "Matias", "Matthew", "Max", "Maxim", "Michael", "Milo", "Mohammed", "Mohamed", 
	"Naoki", "Nicolas", "Nico", "Nikolai", "Noah", "Omar", "Owen", "Pablo", "Patrick", "Paul", 
	"Peter", "Philip", "Quentin", "Rafael", "Rami", "Ramon", "Randy", "Raymond", "Reed", "Reuben", 
	"Richard", "Robert", "Robin", "Rocco", "Roman", "Ronald", "Rowan", "Roy", "Ruben", "Ryan", 
	"Sam", "Samuel", "Santiago", "Sasha", "Scott", "Sean", "Sebastian", "Shane", "Simon", "Soren", 
	"Stefan", "Steven", "Tadeo", "Takahiro", "Tanner", "Thomas", "Timothy", "Tobias", "Tomas", "Travis", 
	"Tristan", "Tyler", "Victor", "Vincent", "Wade", "Walter", "Wayne", "William", "Xavier", "Yannick", 
	"Yusuf", "Zachary", "Zane", "Zeke", "Adrian", "Avery", "Beau", "Brendan", "Calvin", "Cedric", 
	"Collin", "Darius", "Desmond", "Dorian", "Elias", "Emerson", "Ezra", "Ferdinand", "Gideon", 
	"Greg", "Hugo", "Iker", "Ivan", "Jay", "Joaquin", "Julius", "Khalid", "Kobe", "Lance", 
	"Levi", "Malik", "Milo", "Nash", "Neil", "Orion", "Rafael", "Rocco", "Romeo", "Santiago", 
	"Silas", "Tobias", "Trent", "Vince", "Zane", "Yanis", "Ansel", "Alden", "Brendan", "Darius", 
	"Floyd", "Gage", "Galen", "Harris", "Jovany", "Kane", "Kurtis", "Orlando", "Preston", "Quinlan", 
	"Riley", "Shiloh", "Talon", "Vaughn", "Winston", "Xander", "Yves", "Zephyr",
	"Liam", "Noah", "Oliver", "James", "Muhammad", "Ethan", "Mason", "Lucas", "Elijah", "Aiden",
	"Mateo", "Alexander", "Daniel", "Logan", "Sebastian", "Benjamin", "Jack", "Jacob", "Henry", "Mohamed",
	"Isaac", "Samuel", "David", "Jayden", "Elias", "Omar", "Adam", "Ravi", "Leon", "Javier",
	"Hassan", "Amir", "Ali", "Yusuf", "Khalid", "Oscar", "Hiro", "Tariq", "Luca", "Marco",
	"Ivan", "Miguel", "André", "Tomas", "Reza", "Ashraf", "Kai", "Nikolai", "Pavel", "Kofi",
	"Diego", "Carlos", "Felix", "Hiroshi", "Mehmet", "Viktor", "Dmitri", "Santiago", "Juan", "Olek",
	"Mateus", "Mustafa", "Adil", "Youssef", "Farid", "Sami", "Ibrahim", "Rohan", "Rafael", "Ahmed",
	"Rami", "Olek", "Mikhail", "Eren", "Mohammed", "Lucas", "Levi", "Kaito", "Taha", "Pedro",
	"Kumar", "Eman", "Akira", "Enzo", "Lars", "Hamza", "Malik", "Ezra", "Kadir", "Gustav",
	"Stefan", "Anders", "Suleiman", "Tomasz", "Kareem", "Nils", "Anwar", "Goran", "Abdi", "Arjun",
	"Ivanov", "Jin", "Zane", "Musa", "Leonardo", "Joaquin", "Bashir", "Adrian", "Alejandro", "Farouk",
	"Salim", "Jorge", "Vladimir", "Xavier", "Khalil", "Samir", "Raul", "Anas", "Emir", "Oren", "Kwame", 
	"Abdul", "Chike", "Adebayo", "Tendai", "Femi", "Kofi", "Amare", "Tariq", "Mandela", "Ifeanyi", "Omari", 
	"Jabari", "Sekou", "Tafari", "Abebe", "Zuberi", "Dumi", "Babatunde", "Obinna", "Kelechi", "Ngola", 
	"Tumi", "Kamau"
]

var last_name_list: Array[String] = [
	"Smith", "Khan", "Garcia", "Ivanov", "Kim", "Martinez", "Singh", "Zhang", "Patel", "OConnor",
	"Hernandez", "Rossi", "Tanaka", "Ahmed", "Lopez", "Kumar", "Nakamura", "Gonzalez", "Ali", "Petrov",
	"Nguyen", "Perez", "Muller", "Chowdhury", "Dubois", "Silva", "Yamamoto", "Cohen", "Rodriguez", "Hassan",
	"Ibrahim", "Fernandez", "Liu", "Johnson", "Popov", "Lee", "Santos", "Mansoor", "Wang", "Sharma",
	"Torres", "Bakker", "Bianchi", "Lopez", "Sousa", "Mikhailov", "Fischer", "Hussein", "Morales", "Kovac",
	"Ribeiro", "Yildirim", "Romero", "Smithson", "Hamad", "Schneider", "Davies", "Meier", "Castillo", "Sato",
	"Aliyev", "Bennett", "Gomes", "Stevens", "Hoxha", "Moreira", "Pavlov", "Adams", "Rogers", "Amin",
	"Costa", "Murphy", "Yousef", "Berger", "Silva", "Saeed", "Larsen", "Kwon", "Santiago", "Duarte",
	"Farah", "OBrien", "Novak", "Gutierrez", "Sadiq", "Aoki", "Schmidt", "Kaur", "Williams", "Zhao",
	"Klein", "Fujita", "Johansson", "Omar", "Park", "Carter", "Morrison", "Basu", "Martins", "Weber",
	"Salah", "Pereira", "Diaz", "Chavez", "Mustafa", "Garcia", "Gul", "Vargas", "Takahashi", "Serrano",
	"Russo", "Owolabi", "Mendes", "Rahman", "Mendoza", "Simoes", "Siddiqui", "Abdi", "de Oliveira", "Shin", "Abadi", "Abdallah", "Abdi", "Adams", "Ahmed", "Almeida", "Ali", "Alvarez", "Anderson", "Aoki", 
	"Armstrong", "Avery", "Baker", "Banda", "Barnes", "Barrett", "Bennett", "Berg", "Bernard", "Black", 
	"Blanco", "Boone", "Bowers", "Boyd", "Bradley", "Brown", "Brunet", "Bryant", "Butler", "Cameron", 
	"Cao", "Carlson", "Chen", "Choi", "Clark", "Cohen", "Collins", "Cook", "Cooper", "Cruz", 
	"Davidson", "Davis", "Dawson", "Diaz", "Dickson", "Donovan", "Douglas", "Duncan", "Edwards", "Eliot", 
	"Ellis", "Emery", "Evans", "Ferguson", "Fisher", "Flores", "Flynn", "Foster", "Garcia", "Garrison", 
	"Garvin", "Gates", "Gonzalez", "Goodman", "Graham", "Green", "Griffin", "Gupta", "Hall", "Hansen", 
	"Harris", "Hernandez", "Hill", "Hoffman", "Huang", "Hughes", "Hussein", "Ibrahim", "Jackson", "James", 
	"Jenkins", "Johnson", "Jones", "Jordan", "Kahn", "Kang", "Kim", "King", "Klein", "Knight", 
	"Lee", "Li", "Liu", "Lopez", "Mack", "Maldonado", "Malik", "Martinez", "Mason", "Matsuda", 
	"McCarthy", "McDonald", "Mendez", "Miller", "Miller", "Moore", "Moreno", "Murphy", "Murray", "Nguyen", 
	"Nielsen", "Norton", "O'Brien", "Ochoa", "Oliver", "Olsen", "Parker", "Patel", "Perry", "Peterson", 
	"Pérez", "Phillips", "Powell", "Ramirez", "Reyes", "Richardson", "Roberts", "Robinson", "Rodriguez", 
	"Rogers", "Romero", "Ross", "Rubio", "Russell", "Sanchez", "Sanders", "Scott", "Sharma", "Singh", 
	"Smith", "Snyder", "Stewart", "Sullivan", "Taylor", "Thomas", "Thompson", "Torres", "Turner", "Tyler", 
	"Valdez", "Vasquez", "Wang", "Washington", "White", "Williams", "Wilson", "Wong", "Wood", "Yang", 
	"Yates", "Zhang", "Zimmerman", "Zuniga", "Adhikari", "Alvarez", "Amin", "Antoine", "Archer", 
	"Barclay", "Baron", "Bishop", "Blackwood", "Brooks", "Byrne", "Carson", "Chandler", "Christensen", 
	"Curtis", "Delgado", "Dennis", "Drake", "Dunham", "Elliott", "Fletcher", "Flynn", "Forbes", 
	"Francisco", "Gonzales", "Graves", "Hale", "Hayes", "Hodge", "Huang", "Kelley", "Knox", "Lamb", 
	"Levine", "Mackenzie", "Manning", "Monroe", "Montgomery", "Nash", "Norman", "Pacheco", "Ramsay", 
	"Richards", "Ritchie", "Rollins", "Rowe", "Sampson", "Shepherd", "Simmons", "Stein", "Summers", 
	"Thornton", "Underwood", "Wade", "Wallace", "Wilkins", "Yamamoto", "Mensah", "Adeyemi", "Ndlovu", 
	"Diop", "Okeke", "Balogun", "Kumalo", "Abebe", "Njenga", "Adebayo", "Mugabe", "Diallo", "Onyekachi", 
	"Bashir", "Toure", "Mugisha", "Eze", "Osei", "Kamara", "Mbatha", "Olowo", "Sibanda", "Gyamfi", 
	"Ogundipe", "Chilufya", "Mabena", "Nzinga", "Mahamat", "Akinwale", "Nyaga"
]

var base_height: int = 150
var max_height_added: int = 80
var base_age: int = 15
var max_age_added: int = 35
var position_list: Array[String] = ["Center Back", "Wing Back", "Midfielder", "Winger", "Striker"]
var base_attack: int = 2
var base_defend: int = 2
var base_goalkeeping: int = 2
var base_passing: int = 2
var base_speed: int = 2
var base_agility: int = 2
var base_ball_control: int = 2
var base_shooting: int = 2
var base_interception: int = 2
var max_stat_added: int = 18

func _ready() -> void:
	generate_players(100)

func generate_players(count: int):
	for i in range(count):
		randomize()
		var player = player_data.new()
		var last_name_randomizer = randf()
		var age_randomizer = randf()
		var height_randomizer = randf()
		var speed_randomizer = randf()
		var attack_randomizer = randf()
		var defend_randomizer = randf()
		var pass_randomizer = randf()
		var agility_randomizer = randf()
		var ball_control_randomizer = randf()
		var goalkeeping_randomizer = randf()
		var shooting_randomizer = randf()
		var interception_randomizer = randf()
		#player name
		player.first_name = first_name_list[randi() % first_name_list.size()]
		if last_name_randomizer < 0.013:
			player.last_name = ""
		else:
			player.last_name = last_name_list[randi() % last_name_list.size()]
		
		#player age
		if age_randomizer < 0.2:
			player.age = base_age + randi_range(0, 4)
		elif age_randomizer < 0.4:
			player.age = base_age + randi_range(14, max_age_added)
		else:
			player.age = base_age + randi_range(5, 13)
		
		#player height
		if height_randomizer < 0.3:
			player.height = base_height + randi_range(0, 33)
		elif height_randomizer < 0.9:
			player.height = base_height + randi_range(34, 63)
		else:
			player.height = base_height + randi_range(64, max_height_added)
		
		#speed
		if player.height < 160:
			if speed_randomizer < 0.05:
				player.speed = base_speed + randi_range(0, 6)
			elif speed_randomizer < 0.45:
				player.speed = base_speed + randi_range(7, 11)
			else:
				player.speed = base_speed + randi_range(12, max_stat_added)
		elif player.height < 200:
			if speed_randomizer < 0.5:
				player.speed = base_speed + randi_range(0, 9)
			elif speed_randomizer < 0.9:
				player.speed = base_speed + randi_range(10, 12)
			else:
				player.speed = base_speed + randi_range(13, max_stat_added)
		else:
			if speed_randomizer < 0.7:
				player.speed = base_speed + randi_range(0, 9)
			elif speed_randomizer < 0.96:
				player.speed = base_speed + randi_range(10, 12)
			else:
				player.speed = base_speed + randi_range(13, max_stat_added)
		
		
		#player attack
		if attack_randomizer < 0.2:
			player.attack = base_attack + randi_range(0, 4)
		elif attack_randomizer < 0.4:
			player.attack = base_attack + randi_range(5, 8)
		elif attack_randomizer < 0.6:
			player.attack = base_attack + randi_range(9, 11)
		elif attack_randomizer < 0.85:
			player.attack = base_attack + randi_range(11, 14)
		else:
			player.attack = base_attack + randi_range(15, max_stat_added)

		#player agiltiy
		if agility_randomizer < 0.2:
			player.agility = base_agility + randi_range(0, 4)
		elif agility_randomizer < 0.4:
			player.agility = base_agility + randi_range(5, 8)
		elif agility_randomizer < 0.6:
			player.agility = base_agility + randi_range(9, 11)
		elif agility_randomizer < 0.95:
			player.agility = base_agility + randi_range(11, 14)
		else:
			player.agility = base_agility + randi_range(15, max_stat_added)

		#player shooting
		if shooting_randomizer < 0.2:
			player.shooting = base_shooting + randi_range(0, 4)
		elif shooting_randomizer < 0.4:
			player.shooting = base_shooting + randi_range(5, 8)
		elif shooting_randomizer < 0.6:
			player.shooting = base_shooting + randi_range(9, 11)
		elif shooting_randomizer < 0.95:
			player.shooting = base_shooting + randi_range(11, 14)
		else:
			player.shooting = base_shooting + randi_range(15, max_stat_added)

		#player interception
		if interception_randomizer < 0.2:
			player.interception = base_interception + randi_range(0, 4)
		elif interception_randomizer < 0.4:
			player.interception = base_interception + randi_range(5, 8)
		elif interception_randomizer < 0.6:
			player.interception = base_interception + randi_range(9, 11)
		elif interception_randomizer < 0.95:
			player.interception = base_interception + randi_range(11, 14)
		else:
			player.interception = base_interception + randi_range(15, max_stat_added)

		#player ball_control
		if ball_control_randomizer < 0.2:
			player.ball_control = base_ball_control + randi_range(0, 4)
		elif attack_randomizer < 0.4:
			player.ball_control = base_ball_control + randi_range(5, 8)
		elif attack_randomizer < 0.6:
			player.ball_control = base_ball_control + randi_range(9, 11)
		elif attack_randomizer < 0.95:
			player.ball_control = base_ball_control + randi_range(11, 14)
		else:
			player.ball_control = base_ball_control + randi_range(15, max_stat_added)

		#player defend
		if defend_randomizer < 0.2:
			player.defend = base_defend + randi_range(0, 4)
		elif defend_randomizer < 0.4:
			player.defend = base_defend + randi_range(5, 8)
		elif defend_randomizer < 0.6:
			player.defend = base_defend + randi_range(9, 11)
		elif defend_randomizer < 0.85:
			player.defend = base_defend + randi_range(11, 14)
		else:
			player.defend = base_defend + randi_range(15, max_stat_added)
		
		#player gk
		if goalkeeping_randomizer < 0.1:
			player.goalkeeping = base_goalkeeping + randi_range(15, max_stat_added)
		elif goalkeeping_randomizer < 0.12:
			player.goalkeeping = base_goalkeeping + randi_range(5, 8)
		elif goalkeeping_randomizer < 0.13:
			player.goalkeeping = base_goalkeeping + randi_range(9, 11)
		elif goalkeeping_randomizer < 0.14:
			player.goalkeeping = base_goalkeeping + randi_range(11, 14)
		else:
			player.goalkeeping = base_goalkeeping
		
		#player passing
		if pass_randomizer < 0.3:
			player.passing = base_passing + randi_range(0, 7)
		elif pass_randomizer < 0.6:
			player.passing = base_passing + randi_range(7, 13)
		else:
			player.passing = base_passing + randi_range(13, max_stat_added)
		
		#player position
		if player.goalkeeping > 7:
			player.position = "Goalkeeper"
		else:
			player.position = position_list[randi() % position_list.size()]
		
		if player.position == "Goalkeeper":
			ResourceSaver.save(player, "res://databases/players/test/goalkeepers/" + str(player.first_name) + " " + str(player.last_name) + ".tres")
		elif player.position == "Center Back" or player.position == "Wing Back":
			ResourceSaver.save(player, "res://databases/players/test/defenders/" + str(player.first_name) + " " + str(player.last_name) + ".tres")
		elif player.position == "Midfielder":
			ResourceSaver.save(player, "res://databases/players/test/midfielders/" + str(player.first_name) + " " + str(player.last_name) + ".tres")
		else:
			ResourceSaver.save(player, "res://databases/players/test/attackers/" + str(player.first_name) + " " + str(player.last_name) + ".tres")
		print("generated a player : " + player.first_name + " " + player.last_name + " (" + player.position + ")")
