extends Node2D

var first_name_list: Array[String] = [
	"Aaden", "Aarav", "Aaron", "Abbas", "Abdullah", 
	"Abel", "Abelardo", "Abidemi", "Abraham", "Abram", "Adam", "Adan", "Ade", "Adeel", "Adham", 
	"Adnan", "Adrian", "Adrien", "Aemiliano", "Affonso", "Afan", "Afreen", "Agapito", "Ahmad", 
	"Ahmed", "Aiguo", "Aidan", "Aiden", "Aitor", "Aki", "Akeno", "Akira", "Al", "Alain", "Alan", 
	"Alanso", "Alaric", "Albert", "Alberto", "Alcadio", "Alcedio", "Aldo", "Alejandro", "Alek", 
	"Alessandro", "Alex", "Alexander", "Alexandre", "Alexei", "Alexis", "Alfons", "Alfonso", 
	"Alfred", "Alfredo", "Ali", "Alistair", "Allan", "Allohnso", "Allohnzo", "Allonzo", "Alonso", 
	"Alonzo", "Alohnso", "Alohnzo", "Alonza", "Alphan", "Alphonse", "Alphonso", "Alucido", "Alucio", 
	"Alvaro", "Alvin", "Alwaleed", "Amadeo", "Amado", "Amador", "Amani", "Amar", "Amari", "Amarillo", 
	"Ambrocio", "Ambrose", "Ameer", "Amin", "Amir", "Amjad", "Amogelang", "Amos", "Anas", "Anatoly", 
	"Ancel", "Anders", "Anderson", "Andile", "Andre", "Andrea", "Andreas", "Andrei", "Andres", 
	"Andrew", "Andrey", "Andy", "Angel", "Angelino", "Angelo", "Angus", "Anson", "Antenor", 
	"Anthony", "Antino", "Antoine", "Anton", "Antonello", "Antonio", "Antony", "Anwar", "Apollo", 
	"Apollonios", "Aqib", "Aquiles", "Arata", "Arcadio", "Arcelius", "Arcenio", "Archer", "Archie", 
	"Arda", "Ari", "Aricelio", "Aricelius", "Ariel", "Arif", "Aristeo", "Aristio", "Aristo", 
	"Aristotle", "Arjun", "Arkadi", "Arkadios", "Arlo", "Arman", "Armand", "Armando", "Armani", 
	"Armante", "Arnav", "Arne", "Arnold", "Aroon", "Arrio", "Arsen", "Arseni", "Arsenio", 
	"Arseno", "Arslan", "Art", "Artem", "Arthur", "Arturo", "Arun", "Aryan", "Asa", "Asad", 
	"Asher", "Ashraf", "Ashton", "Asif", "Asim", "Atif", "Atlas", "Atreo", "Atticus", "Aubrey", 
	"August", "Augustin", "Augustine", "Augusto", "Augustus", "Aurelio", "Aureo", "Austin", 
	"Avery", "Avi", "Axel", "Ayaan", "Ayan", "Ayden", "Ayman", "Azibo", "Aziz", "Babatunde", 
	"Bae", "Bakari", "Baldur", "Balthazar", "Bandile", "Bartholomew", "Bartosz", "Baruch", 
	"Bashar", "Basil", "Bastian", "Bautista", "Beau", "Beckett", "Belarmino", "Belen", 
	"Ben", "Benecio", "Benedek", "Benedict", "Benedicto", "Benjamin", "Bennet", "Benny", 
	"Benson", "Bernard", "Bernardo", "Bertran", "Bienvenido", "Bilal", "Billy", "Bjorn", 
	"Blaine", "Blair", "Blake", "Blanco", "Bo", "Bob", "Bobby", "Bojan", "Bolivar", "Bongani", 
	"Boris", "Bourey", "Brad", "Bradley", "Braden", "Brady", "Bram", "Brandon", "Brant", 
	"Braulio", "Braxton", "Brayden", "Brendan", "Brennan", "Brent", "Bret", "Brett", "Brian", 
	"Brice", "Brock", "Brody", "Bronco", "Bronko", "Bronson", "Brooks", "Bruce", "Bruno", 
	"Bryan", "Bryce", "Bryson", "Buenaventura", "Burhan", "Byron", "Caden", "Cael", "Cai", 
	"Caiden", "Cain", "Caisen", "Caius", "Cal", "Caleb", "Calum", "Calvin", "Cameron", 
	"Camilo", "Campbell", "Candelareo", "Candelario", "Candelaro", "Candelerio", "Canute", 
	"Carl", "Carlito", "Carlos", "Carlton", "Carson", "Carter", "Casey", "Casimir", "Casper", 
	"Cassian", "Cassius", "Catalin", "Cayden", "Cecil", "Cedric", "Cesar", "Cesario", "Chad", 
	"Chaim", "Chale", "Chan", "Chandler", "Chano", "Charles", "Charley", "Charlie", "Chase", 
	"Chay", "Chayo", "Che", "Chen", "Chenglei", "Chester", "Chi", "Chike", "Chiko", "Chin", 
	"Chino", "Chris", "Christian", "Christoff", "Christophe", "Christopher", "Cian", "Ciaran", 
	"Cillian", "Cimarron", "Clarence", "Clark", "Claude", "Clay", "Clayton", "Clement", "Clifford", 
	"Clifton", "Clint", "Clinton", "Clive", "Clyde", "Cody", "Cohen", "Colby", "Cole", "Colin", 
	"Collin", "Colm", "Colt", "Colton", "Conan", "Conner", "Connor", "Conor", "Conrad", 
	"Constantine", "Cooper", "Corbin", "Corey", "Cornelio", "Cornelius", "Cortez", "Cory", 
	"Craig", "Cristian", "Cristobal", "Cristiano", "Cristopher", "Cruz", "Cruze", "Cruzito", 
	"Cullen", "Curtis", "Cyrus", "Daan", "Dae", "Dago", "Daichi", "Daiki", "Dakarai", 
	"Dakota", "Dale", "Dali", "Dalton", "Damian", "Damien", "Damion", "Damon", "Dan", "Dana", 
	"Dane", "Dangelo", "Daniel", "Danijel", "Danilo", "Danish", "Danny", "Dante", "Dara", 
	"Darcy", "Darian", "Dario", "Darius", "Darrel", "Darren", "Darrin", "Darryl", "Darwin", 
	"Daryl", "Dash", "Daunte", "Dave", "David", "Davin", "Davide", "Davis", "Dawson", "Dax", 
	"Deacon", "Dean", "Declan", "Deepak", "Delmar", "Delmore", "Demetrius", "Denis", "Dennis", 
	"Denny", "Denver", "Denzel", "Derek", "Derrick", "Desmond", "Devan", "Devin", "Devon", 
	"Devonte", "Dewayne", "Dexter", "Diago", "Diego", "Dilan", "Dillon", "Dimitri", "Dinesh", 
	"Dineo", "Dino", "Dion", "Diogo", "Dior", "Dirk", "Dmitri", "Dmitry", "Dominic", 
	"Dominick", "Dominik", "Domingo", "Don", "Donald", "Donaldo", "Donovan", "Dorian", 
	"Douglas", "Drake", "Drew", "Duane", "Duardo", "Duke", "Duncan", "Dustin", "Dwayne", 
	"Dwight", "Dylan", "Eamon", "Earl", "Easton", "Eberardo", "Ed", "Eddie", "Eddy", 
	"Edgar", "Edgardo", "Edison", "Edmond", "Edmund", "Edmundo", "Edouard", "Eduard", 
	"Eduardo", "Edward", "Edwin", "Efrain", "Efran", "Egon", "Eidan", "Einar", "Eitan", 
	"Eladio", "Elbio", "Elden", "Eldorado", "Eleodoro", "Eli", "Elian", "Elias", "Elie", 
	"Eliel", "Elijah", "Eliseo", "Elisha", "Elliot", "Elliott", "Ellis", "Elmer", "Elmo", 
	"Eloy", "Elton", "Elvio", "Elvin", "Elvis", "Emanuel", "Emerson", "Emery", 
	"Emil", "Emile", "Emiliano", "Emilio", "Emir", "Emmanuel", "Emmet", "Emmett", 
	"Enrique", "Enzo", "Eoghan", "Eoin", "Eric", "Erick", "Erik", "Ermias", "Ernest", 
	"Ernesto", "Errol", "Ervin", "Erwin", "Esai", "Esteban", "Estevan", "Estuardo", 
	"Ethan", "Etienne", "Euan", "Eugene", "Eugenio", "Evan", "Everard", "Everardo", 
	"Everett", "Ewan", "Ezekiel", "Ezequiel", "Ezra", "Fabian", "Fabiano", "Fabio", "Fabrizio", "Facundo", "Fadi", "Fahd", "Faisal", "Faiz", "Faizan", "Fallon", "Farid", "Faris", "Farouk", "Farrell", "Faruq", "Felipe", "Felix", "Feodor", "Ferdinand", "Fernando", "Fidel", "Finbar", "Finlay", "Finn", "Finnegan", "Fionn", "Firas", "Fletcher", "Florian", "Floyd", "Flynn", "Ford", "Forrest", "Francesco", "Francis", "Francisco", "Francois", "Frank", "Frankie", "Franklin", "Fraser", "Fred", "Freddie", "Freddy", "Frederick", "Fynn", "Gabriel", "Gael", "Gage", "Galen", "Galileo", "Gamal", "Gannon", "Gareth", "Garrett", "Garrison", "Garry", "Garth", "Gary", "Gaspar", "Gaston", "Gavin", "Gavril", "Gene", "Geoffrey", "George", "Georges", "Georgio", "Gerald", "Gerard", "Gerardo", "German", "Gerry", "Gethin", "Giacomo", "Gian", "Giancarlo", "Gianni", "Gibson", "Gideon", "Gigi", "Gil", "Gilbert", "Gilberto", "Gino", "Giorgio", "Giovanni", "Glen", "Glenn", "Godfrey", "Gonzalo", "Gordon", "Grady", "Graeme", "Graham", "Grant", "Grayson", "Greg", "Gregg", "Gregor", "Gregory", "Griffin", "Guido", "Guilherme", "Guillermo", "Gunnar", "Gunner", "Gus", "Gustav", "Gustavo", "Guy", "Habib", "Hadi", "Hadrian", "Hakeem", "Hakim", "Hal", "Hamid", "Hamilton", "Hamish", "Hamza", "Hank", "Hans", "Haris", "Harley", "Harold", "Harris", "Harrison", "Harry", "Haru", "Haruki", "Harvey", "Hasan", "Hassan", "Hayden", "Heath", "Hector", "Hendrik", "Henrik", "Henry", "Herbert", "Herman", "Hernan", "Hezekiah", "Hideo", "Hikaru", "Hilario", "Hiro", "Hiroki", "Hiroshi", "Holden", "Homer", "Horace", "Horacio", "Houston", "Howard", "Hubert", "Hudson", "Hugh", "Hugo", "Humberto", "Humphrey", "Hunter", "Hussein", "Iago", "Iain", "Ian", "Ibrahim", "Idris", "Ignacio", "Igor", "Iker", "Imad", "Immanuel", "Imran", "Indra", "Inigo", "Ira", "Irvin", "Irving", "Isaac", "Isaak", "Isai", "Isaiah", "Isaias", "Ishaan", "Ishmael", "Isidro", "Ismael", "Ismail", "Israel", "Issac", "Itay", "Ivaan", "Ivan", "Ivor", "Izaiah", "Izzy", "Jace", "Jack", "Jackson", "Jacob", "Jacobo", "Jacoby", "Jacques", "Jaden", "Jadiel", "Jagger", "Jai", "Jaiden", "Jaime", "Jairo", "Jairus", "Jalen", "Jamal", "Jamar", "James", "Jameson", "Jamie", "Jamil", "Jamir", "Jan", "Jared", "Jareth", "Jariel", "Jarrett", "Jarvis", "Jason", "Jasper", "Javier", "Javon", "Jax", "Jaxon", "Jaxson", "Jay", "Jayce", "Jayden", "Jaylen", "Jaylin", "Jayson", "Jean", "Jed", "Jedidiah", "Jeff", "Jefferson", "Jeffery", "Jeffrey", "Jensen", "Jeremiah", "Jeremias", "Jeremy", "Jermaine", "Jerome", "Jerry", "Jesse", "Jessie", "Jesus", "Jethro", "Jett", "Jevon", "Jim", "Jimmie", "Jimmy", "Jin", "Joachim", "Joaquin", "Job", "Joe", "Joel", "Joesph", "Joey", "Johan", "John", "Johnathan", "Johnathon", "Johnnie", "Johnny", "Jon", "Jonah", "Jonas", "Jonathan", "Jonathon", "Jordan", "Jordi", "Jordon", "Jordy", "Jorge", "Jose", "Josef", "Joseph", "Josh", "Joshua", "Josiah", "Josue", "Jovan", "Jovani", "Juan", "Judah", "Judd", "Jude", "Julian", "Julien", "Julio", "Julius", "Junior", "Justice", "Justin", "Justus", "Kade", "Kaden", "Kai", "Kaiden", "Kaleb", "Kalel", "Kalen", "Kameron", "Kamran", "Kane", "Kareem", "Karim", "Karl", "Karson", "Karter", "Kasen", "Kash", "Kason", "Kasper", "Kato", "Katsuro", "Kavik", "Kawan", "Kayden", "Kayson", "Keanu", "Keaton", "Keegan", "Keenan", "Keith", "Kellan", "Kellen", "Kellin", "Kelly", "Kelvin", "Ken", "Kenji", "Kenneth", "Kenny", "Kent", "Kenton", "Kenzo", "Keon", "Kermit", "Kerry", "Keshaun", "Kian", "Kieran", "Killian", "Kingsley", "Kingston", "Kiran", "Kirby", "Kirk", "Klaus", "Knox", "Kobe", "Kody", "Koen", "Konnor", "Konrad", "Korbin", "Kory", "Kristian", "Kristoff", "Kristopher", "Kurt", "Kurtis", "Kyan", "Kylan", "Kyle", "Kyler", "Kylian", "Kylo", "Kyree", "Kyrie", "Kyson", "Lachlan", "Lamar", "Lambert", "Lance", "Landen", "Landon", "Lane", "Langston", "Larry", "Lars", "Laurence", "Lawrence", "Lawson", "Lazarus", "Leandro", "Lee", "Legend", "Leif", "Leighton", "Leland", "Leo", "Leon", "Leonard", "Leonardo", "Leonel", "Leonidas", "Leopold", "Leroy", "Levi", "Lewis", "Liam", "Lian", "Lincoln", "Link", "Lionel", "Lloyd", "Lochlan", "Logan", "Loki", "London", "Lonnie", "Lonny", "Lorenzo", "Loris", "Lou", "Louie", "Louis", "Lowell", "Luca", "Lucas", "Lucian", "Luciano", "Luigi", "Luis", "Luka", "Lukas", "Luke", "Luther", "Lyle", "Lyndon",
	"Mace", "Maciej", "Mack", "Madden", "Maddox", "Mads", "Magnus", "Mahlon", "Maison", "Maitreya", "Majid", "Makai", "Maksim", "Malachi", "Malakai", "Malcolm", "Malik", "Mamoru", "Manav", "Manco", "Manfred", "Manish", "Manny", "Manoel", "Manolo", "Manu", "Manuel", "Marc", "Marcel", "Marcello", "Marcelo", "Marco", "Marcos", "Marcus", "Marek", "Marian", "Mariano", "Mario", "Marius", "Mark", "Markel", "Marko", "Markus", "Marlon", "Marquis", "Marshall", "Martin", "Marty", "Marvin", "Masaki", "Masaru", "Mason", "Massimo", "Mateo", "Mateusz", "Mathew", "Mathias", "Matias", "Matteo", "Matthew", "Matthias", "Maurice", "Mauricio", "Mauro", "Maverick", "Max", "Maxim", "Maximilian", "Maximiliano", "Maximo", "Maxwell", "Mayson", "Mckinley", "Mekhi", "Melvin", "Memphis", "Merrick", "Messiah", "Micah", "Michael", "Micheal", "Michel", "Miguel", "Mika", "Mikael", "Mike", "Mikel", "Mikhail", "Milan", "Miles", "Miller", "Milo", "Milos", "Milton", "Misha", "Mitch", "Mitchell", "Mohamed", "Mohammad", "Mohammed", "Mohan", "Moises", "Monte", "Montgomery", "Monty", "Mordecai", "Morgan", "Morris", "Moses", "Moshe", "Muhammad", "Murat", "Murphy", "Murray", "Mustafa", "Myles", "Myron", "Nabil", "Nadir", "Nael", "Najib", "Nakia", "Naoki", "Naran", "Narciso", "Naseem", "Nash", "Nasir", "Nasser", "Natal", "Natale", "Nathan", "Nathanael", "Nathaniel", "Naveen", "Navid", "Xavier", "Neal", "Ned", "Neel", "Nehemiah", "Neil", "Nelson", "Nereo", "Neron", "Nevin", "Niall", "Nicholas", "Nick", "Nickolas", "Nico", "Nicola", "Nicolas", "Niels", "Nigel", "Nikhil", "Nikita", "Nikko", "Niko", "Nikolai", "Nikolas", "Niles", "Nils", "Nino", "Nixon", "Noah", "Noe", "Noel", "Nolan", "Norbert", "Norman", "Oakley", "Obed", "Octavio", "Odin", "Odysseus", "Olaf", "Oleg", "Olin", "Oliver", "Olivier", "Olufemi", "Omar", "Omari", "Omer", "Oran", "Oren", "Orion", "Orlando", "Orson", "Oscar", "Oskar", "Osman", "Osvaldo", "Oswald", "Oswaldo", "Otis", "Otto", "Owen", "Ozzy", "Pablo", "Paco", "Padraig", "Paolo", "Parker", "Pascal", "Pasquale", "Pat", "Patricio", "Patrick", "Paul", "Paulo", "Pavel", "Paxton", "Payton", "Pedro", "Percy", "Perry", "Peter", "Peyton", "Phil", "Philip", "Philippe", "Phineas", "Phoenix", "Pierce", "Pierre", "Piers", "Pio", "Porter", "Preston", "Prince", "Princeton", "Pryce", "Quentin", "Quincy", "Quinn", "Quinton", "Radomir", "Radovan", "Raegan", "Rafael", "Rafe", "Raffaele", "Rafi", "Rafiq", "Raghav", "Rahim", "Rahul", "Raiden", "Rainer", "Raj", "Raja", "Rajan", "Rajesh", "Ralph", "Rami", "Ramiro", "Ramon", "Ramses", "Ramsey", "Randall", "Randolph", "Randy", "Raphael", "Raul", "Ravi", "Ray", "Rayan", "Raymond", "Reagan", "Reece", "Reed", "Reese", "Reggie", "Reginald", "Rehan", "Reid", "Remi", "Remington", "Remy", "Ren", "Renato", "Rene", "Reuben", "Rex", "Rey", "Reyes", "Reynaldo", "Reza", "Rhett", "Rhys", "Rian", "Ricardo", "Rich", "Richard", "Richie", "Richmond", "Rick", "Rickey", "Rickie", "Ricky", "Rico", "Rider", "Ridge", "Riku", "Riley", "Rio", "Rishi", "River", "Riyad", "Roan", "Rob", "Robbie", "Robby", "Robert", "Roberto", "Robin", "Robinson", "Rocco", "Rocky", "Rod", "Rodney", "Rodolfo", "Rodrigo", "Rogelio", "Roger", "Rohan", "Roland", "Rolando", "Roman", "Romeo", "Ron", "Ronald", "Ronan", "Ronnie", "Ronny", "Roosevelt", "Rory", "Roscoe", "Ross", "Rowan", "Roy", "Royal", "Royce", "Ruairi", "Ruben", "Rubin", "Rudolph", "Rudy", "Rufus", "Rune", "Rupert", "Russell", "Rustam", "Rusty", "Ryan", "Ryder", "Ryker", "Rylan", "Ryland", "Ryo", "Ryota", "Ryunosuke", "Ryusei",
	"Saad", "Sabastian", "Saber", "Sabir", "Sacha", "Sachin", "Sadiq", "Said", "Saif", "Saint", "Sal", "Salah", "Saleh", "Salem", "Salim", "Salvador", "Salvatore", "Sam", "Samar", "Sameer", "Sami", "Samir", "Samson", "Samuel", "Sandeep", "Sandro", "Sandy", "Sanjay", "Santiago", "Santino", "Santos", "Sasha", "Saul", "Savva", "Sawyer", "Scott", "Seamus", "Sean", "Sebastian", "Sebastien", "Sebastion", "Sedrick", "Segun", "Selah", "Semaj", "Senan", "Seo-joon", "Sergio", "Seth", "Shade", "Shadi", "Shafiq", "Shah", "Shamar", "Shamir", "Shane", "Shannon", "Shaquille", "Sharif", "Shaun", "Shawn", "Shay", "Shayan", "Shayne", "Shea", "Sheldon", "Shemar", "Shepherd", "Sherman", "Shiloh", "Shin", "Shlomo", "Shmuel", "Siddharth", "Sidney", "Silas", "Silvan", "Silvano", "Silvio", "Simeon", "Simon", "Sincere", "Sinisa", "Skylar", "Skyler", "Slade", "Sloan", "Sol", "Solomon", "Sonny", "Soren", "Soroush", "Spencer", "Stacey", "Stacy", "Stan", "Stanley", "Stavros", "Stefan", "Stefano", "Steffan", "Stephan", "Stephen", "Sterling", "Stellan", "Stevan", "Steve", "Steven", "Stevie", "Stewart", "Stone", "Storm", "Stoyan", "Stuart", "Sufyan", "Suhail", "Suleiman", "Sullivan", "Sultan", "Susumu", "Sven", "Syed", "Sylar", "Sylvan", "Sylvester", "Tad", "Tadhg", "Tadeo", "Tadi", "Taggart", "Taha", "Tahir", "Tai", "Taino", "Tait", "Takahiro", "Takashi", "Takeshi", "Takuya", "Talan", "Talen", "Talon", "Tamir", "Tanner", "Tariq", "Taro", "Taron", "Tate", "Tatum", "Taurino", "Taurus", "Tavaris", "Tavian", "Tavio", "Tavon", "Taylor", "Teagan", "Teague", "Ted", "Teddy", "Teo", "Teodor", "Teodoro", "Terence", "Terrance", "Terrell", "Terrence", "Terry", "Thad", "Thaddeus", "Thanh", "Theo", "Theodor", "Theodore", "Theon", "Theron", "Thiago", "Thierry", "Thom", "Thomas", "Thor", "Thorne", "Thurman", "Tiago", "Tian", "Tiberio", "Tiberiu", "Tiernan", "Tim", "Timmie", "Timmy", "Timothy", "Tino", "Tito", "Titus", "Tobias", "Toby", "Tod", "Todd", "Toma", "Tomas", "Tomislav", "Tommy", "Tomoki", "Tony", "Torbjorn", "Toren", "Torin", "Tory", "Trace", "Tracy", "Travis", "Tremaine", "Trent", "Trenton", "Trevor", "Trey", "Tripp", "Tristan", "Tristen", "Tristin", "Troy", "Truman", "Trystan", "Tudor", "Tupac", "Turner", "Ty", "Tye", "Tyler", "Tymon", "Tymoteusz", "Tyr", "Tyree", "Tyrell", "Tyrese", "Tyrone", "Tyson", "Ugo", "U-Jin", "Ulises", "Ulysses", "Umar", "Umberto", "Uriel", "Uriah", "Usain", "Usman", "Uziel", "Vaden", "Val", "Valentin", "Valentino", "Valerius", "Vance", "Vasco", "Vaughn", "Vernon", "Vic", "Vicente", "Victor", "Vidal", "Viggo", "Vijay", "Vikram", "Viktor", "Vince", "Vincent", "Vincenzo", "Vinicio", "Vinnie", "Virgil", "Vishnu", "Vito", "Vittorio", "Vladimir", "Vladislav", "Wade", "Walden", "Walker", "Wallace", "Wally", "Walt", "Walter", "Warren", "Wayde", "Waylan", "Waylon", "Wayne", "Wendell", "Wes", "Wesley", "Westin", "Weston", "Will", "William", "Willie", "Willis", "Wilson", "Wilton", "Winston", "Wolf", "Wolfgang", "Wyatt", "Xabi", "Xabier", "Xaden", "Xander", "Xandros", "Xavi", "Xavion", "Xeno", "Xerxes", "Xiang", "Ximen", "Ximun", "Xolani", "Xylon", "Yadir", "Yael", "Yago", "Yahya", "Yair", "Yakub", "Yancy", "Yani", "Yann", "Yannick", "Yared", "Yariel", "Yasin", "Yasir", "Yates", "Yehuda", "Yeray", "Yestin", "Yigit", "Yoan", "Yoel", "Yohann", "Yohan", "Yorgos", "Yoshi", "Yoshiro", "Yousef", "Youssef", "Yuri", "Yusuf", "Yuto", "Yuval", "Yves", "Zac", "Zach", "Zachariah", "Zachary", "Zack", "Zackary", "Zackery", "Zaden", "Zahir", "Zaid", "Zaiden", "Zain", "Zaire", "Zakai", "Zander", "Zane", "Zavier", "Zayd", "Zayn", "Zayne", "Zebediah", "Zebulon", "Zed", "Zeke", "Zelig", "Zen", "Zeno", "Zhivago", "Zion", "Zoltan", "Zuberi", "Zuri", "Zyaire"
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
	"Bashir", "Toure", "Mugisha", "Eze", "Osei", "Kamara", "Mbatha", "Olowo", "Sibanda", "Gyamfi", "Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Thomas", "Taylor", "Moore", "Jackson", "Martin", "Lee", "Perez", "Thompson", "White", "Harris", "Sanchez", "Clark", "Ramirez", "Lewis", "Robinson", "Walker", "Young", "Allen", "King", "Wright", "Scott", "Torres", "Nguyen", "Hill", "Flores", "Green", "Adams", "Nelson", "Baker", "Hall", "Rivera", "Campbell", "Mitchell", "Carter", "Roberts", "Gomez", "Phillips", "Evans", "Turner", "Diaz", "Parker", "Cruz", "Edwards", "Collins", "Reyes", "Stewart", "Morris", "Morales", "Murphy", "Cook", "Rogers", "Gutierrez", "Ortiz", "Morgan", "Cooper", "Peterson", "Bailey", "Reed", "Kelly", "Howard", "Ramos", "Kim", "Cox", "Ward", "Richardson", "Watson", "Brooks", "Chavez", "Wood", "James", "Bennett", "Gray", "Mendoza", "Ruiz", "Hughes", "Price", "Alvarez", "Castillo", "Sanders", "Patel", "Myers", "Long", "Ross", "Foster", "Jimenez", "Powell", "Jenkins", "Perry", "Russell", "Sullivan", "Bell", "Coleman", "Butler", "Henderson", "West", "Barnes", "Fisher", "Warren", "Marshall", "Pena", "Rojas", "Soto", "Matthews", "Guerrero", "Snyder", "Ferguson", "Nichols", "Kennedy", "Sato", "Suzuki", "Takahashi", "Tanaka", "Watanabe", "Ito", "Yamamoto", "Nakamura", "Kobayashi", "Kato", "Yoshida", "Yamada", "Sasaki", "Müller", "Schmidt", "Schneider", "Fischer", "Weber", "Meyer", "Wagner", "Becker", "Schulz", "Hoffmann", "Schäfer", "Koch", "Bauer", "Richter", "Klein", "Wolf", "Schröder", "Neumann", "Schwarz", "Zimmermann", "Braun", "Krüger", "Hofmann", "Hartmann", "Lange", "Schmitt", "Werner", "Schmitz", "Krause", "Meier", "Lehmann", "Schmid", "Schulze", "Maier", "Köhler", "Herrmann", "König", "Walter", "Mayer", "Huber", "Kaiser", "Fuchs", "Peters", "Lang", "Scholz", "Möller", "Weiß", "Jung", "Hahn", "Schubert", "Vogel", "Friedrich", "Keller", "Günther", "Frank", "Berger", "Winkler", "Roth", "Baumann", "Franke", "Alonso", "Moreno", "Jiménez", "Muñoz", "Romero", "Navarro", "Rubio", "Serrano", "Gil", "Iglesias", "Diez", "Suarez", "Vargas", "Castro", "Molina", "Delgado", "Vega", "Marquez", "Ortíz", "Cano", "Gallego", "Rossi", "Russo", "Ferrari", "Esposito", "Bianchi", "Romano", "Colombo", "Ricci", "Marino", "Greco", "Bruno", "Gallo", "Conti", "De Luca", "Mancini", "Costa", "Giordano", "Rizzo", "Lombardi", "Moretti", "Barbieri", "Fontana", "Santoro", "Mariani", "Rinaldi", "Caruso", "Villa", "Conte", "Ferrara", "Galli", "Martini", "Leone", "Longo", "Gentile", "Martin", "Bernard", "Dubois", "Thomas", "Robert", "Richard", "Petit", "Durand", "Leroy", "Moreau", "Simon", "Laurent", "Lefebvre", "Michel", "Garcia", "Roux", "David", "Bertrand", "Morel", "Fournier", "Girard", "Bonnet", "Dupont", "Lambert", "Fontaine", "Rousseau", "Vincent", "Muller", "Lefevre", "Faure", "Andre", "Mercier", "Blanc", "Guerin", "Boyer", "Garnier", "Chevalier", "Francois", "Legrand", "Gauthier", "Perrin", "Robin", "Clement", "Morin", "Henry", "Roussel", "Nicolas", "Joly", "Garnier", "Da Silva", "Santos", "Ferreira", "Pereira", "Oliveira", "Costa", "Rodrigues", "Martins", "Jesus", "Sousa", "Fernandes", "Gonçalves", "Gomes", "Lopes", "Marques", "Almeida", "Ribeiro", "Pinto", "Carvalho", "Teixeira", "Ivanov", "Ivanova", "Petrov", "Petrova", "Popov", "Popova", "Smirnov", "Smirnova", "Mikhailov", "Mikhailova", "Fyodorov", "Fyodorova", "Volkov", "Volkova", "Kuznetsov", "Kuznetsova", "Vasilyev", "Vasilyeva", "Sokolov", "Sokolova", "Yakovlev", "Yakovleva", "Novak", "Nowak", "Horvat", "Kovačič", "Kowalski", "Kowalczyk", "Zając", "Król", "Majewski", "Wójcik", "Woźniak", "Kaczmarek", "Mazur", "Jankowski", "Kwiatkowski", "Wojciechowski", "Krawczyk", "Lis", "Dąbrowski", "Zieliński", "Szymański", "Kozłowski", "Jasiński", "Walczak", "Bąk", "Sikora", "Górski", "Nowicki", "Pawlak", "Witkowski", "Baran", "Michalski", "Szewczyk", "Ostrowski", "Grabowski", "Piotrowski", "Nowakowski", "Pawłowski", "Michalak", "Murphy", "Kelly", "O'Sullivan", "Walsh", "O'Brien", "Byrne", "Ryan", "O'Connor", "O'Neill", "O'Reilly", "Doyle", "McCarthy", "Gallagher", "Doherty", "Kennedy", "Lynch", "Murray", "Quinn", "Moore", "McLaughlin", "O'Donnell", "Brennan", "Burke", "Campbell", "Stewart", "MacDonald", "Scott", "Reid", "Robertson", "Thomson", "Fraser", "Johnston", "Sinclair", "Murray", "Clark", "Paterson", "Young", "Watson", "Walker", "Ross", "Gray", "Henderson", "Grant", "Ferguson", "McLean", "McLeod", "Black", "Mackenzie", "Peeters", "Janssens", "Maes", "Jacobs", "Mertens", "Willems", "Claes", "Goossens", "Wouters", "De Smet", "Dubois", "Lambert", "Martin", "Simon", "Dupont", "De Vries", "Jansen", "Van den Berg", "Bakker", "Smit", "Meijer", "Visser", "De Boer", "Mulder", "De Groot", "Bos", "Vos", "Peters", "Hendriks", "Van Dijk", "Dekker", "Brouwer", "De Leeuw", "Smeets", "Andersson", "Johansson", "Karlsson", "Nilsson", "Eriksson", "Larsson", "Olsson", "Persson", "Svensson", "Gustafsson", "Pettersson", "Jonsson", "Jansson", "Hansen", "Jensen", "Nielsen", "Pedersen", "Andersen", "Christensen", "Larsen", "Sørensen", "Rasmussen", "Jørgensen", "Møller", "Olsen",
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
	print(str(first_name_list.size()))
	print(str(last_name_list.size()))
	#generate_players(100)

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
