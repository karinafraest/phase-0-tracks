require 'sqlite3'

	#CREATE A NEW DATABASE
	db=SQLite3::Database.new("board_games.db")
	db.results_as_hash = true	

	#CREATE A BOARD GAME TABLE
		#ID NAME COST TIMES PLAYED
	create_table_boardgames = <<-SQL
	  CREATE TABLE IF NOT EXISTS board_games(
	    id INTEGER PRIMARY KEY,
	    name VARCHAR(255),
	    cost INTEGER,
	    times_played INTEGER
	  )
	SQL

	#CREATE A PLAYER TABLE
	#ID NAME, LAST NAME
	create_table_players = <<-SQL
		CREATE TABLE IF NOT EXISTS players(
			id INTEGER PRIMARY KEY,
			first_name VARCHAR(255),
			last_name VARCHAR(255)
			)
		SQL

	#CREATE A SCORE TABLE
		#ID, DATE, GAME NUMBER, GAME, PLAYER, SCORE
	create_table_scores = <<-SQL
		CREATE TABLE IF NOT EXISTS scores(
			id INTEGER PRIMARY KEY,
			date VARCHAR(255),
			game_id INTEGER,
			games_per_day INTEGER,
			player_id INTEGER,
			score INTEGER,
			FOREIGN KEY(game_id) REFERENCES board_games(id),
			FOREIGN KEY(player_id) REFERENCES players(id)
			)	
	SQL

	db.execute(create_table_players)
	db.execute(create_table_boardgames)
	db.execute(create_table_scores)

#ADD A BOARD GAME TO THE LIST IF IT IS NOT ALREADY THERE
def add_game(db,name,times_played=0, cost)
	current_games=db.execute("SELECT * FROM board_games")
	included=false
	if current_games.length==0
		puts "#{name} added."
		db.execute("INSERT INTO board_games(name, cost, times_played) VALUES (?, ?,?)", [name, cost,times_played])
	else
		current_games.each do |game|
			included=true if game["name"]==name
		end
		if included==false
			puts "#{name} added."
			db.execute("INSERT INTO board_games(name, cost, times_played) VALUES (?, ?,?)", [name, cost,times_played])
		else
			puts "#{name} was already saved."
		end
	end
	current_games
end

#ADD A PLAYER TO THE LIST IF IT IS NOT ALREADY THERE
def add_player(db,first_name,last_name)
	current_names=db.execute("SELECT* FROM players")
	included=false
	if current_names.length==0
		puts"#{first_name} #{last_name} added"
		db.execute("INSERT INTO players(first_name,last_name) VALUES(?,?)",[first_name,last_name])
	else
		current_names.each do |name|
			included=true if name["first_name"]==first_name && name['last_name']==last_name
		end
		if included==false
			puts "#{first_name} #{last_name} added"
			db.execute("INSERT INTO players(first_name,last_name) VALUES(?,?)",[first_name,last_name])
		else
			puts "#{first_name} #{last_name} was already saved"
		end
	end
	current_names
end

def add_score(db,date,game_id,player_id,score,games_per_day)
	puts "Date:#{date},Game_id:#{game_id},Player_id: #{player_id}, Score:#{score},games_per_day: #{games_per_day}"
	db.execute("INSERT INTO scores(date,game_id,games_per_day,player_id,score) VALUES(?,?,?,?,?)",[date,game_id,games_per_day,player_id,score])
end

def find_id(db,type,name)
	if type=="game"
		current_games=add_game(db,name,1) #Add 1 to times played PENDING
		this_id=db.execute("SELECT id FROM board_games WHERE name=?",[name])
	else
		name=name.split(" ")
		first_name=name[0]
		last_name=name[1]
		current_players=add_player(db,first_name,last_name)
		this_id=db.execute("SELECT id FROM players WHERE first_name=? AND last_name=?",[first_name,last_name])
	end
	this_id[0]["id"]
end

#ADD A SCORE FOR A GAME
def score_game(db,date,game,num_players,games_per_day=1)
	game_id=find_id(db,"game",game)
	num_players.times do |player|
		puts "Insert player's name"
		player_name=gets.chomp
		player_id=find_id(db,"player",player_name)
		puts"Insert #{player_name} score for #{game}"
		player_score=gets.chomp.to_i
		add_score(db,date,game_id,player_id,player_score,games_per_day)
	end
end
##FIND THE ID FOR NAME AND GAME

#REVIEW BOARD GAME TABLE
def view_games(db,name="all")
	if name=="all"
		current_games=db.execute("SELECT * FROM board_games")
		puts "Game".ljust(30)+"Cost".ljust(30)+"Times Played".rjust(30)
		current_games.each do |game|
			puts "#{game['name']}".ljust(30)+"#{game['cost']}".ljust(30)+"#{game['times_played']}" .rjust(30)
		end
	end
end
#later I can display just the one they need

#REVIEW PLAYER TABLE
def view_players(db,name="all")
	if name=="all"
		current_names=db.execute("SELECT * FROM players")
		puts"Name"
		current_names.each do |name|
			puts "#{name['first_name']} #{name['last_name']}"
		end
	end
end
#REVIEW SCORE TABLE
def view_scores(db)
	current_scores=db.execute("SELECT scores.date, scores.games_per_day, board_games.name, players.first_name, players.last_name, scores.score FROM scores JOIN players, board_games ON scores.player_id=players.id AND scores.game_id=board_games.id;")
	puts "Scores"
	puts "Date".ljust(15)+"Number".ljust(10)+"Game".ljust(20)+"Name".ljust(30)+"Score".ljust(50)
	current_scores.each do |score|
		puts "#{score['date']}".ljust(15)+"#{score['games_per_day']}".ljust(10)+"#{score['name']}".ljust(20)+"#{score['first_name']} #{score['last_name']}".ljust(30)+"#{score['score']}".ljust(50)
	end
end


#DRIVER CODE
#add_game(db,"Settlers of Cattan",20,60)
#add_game(db,"Splendor", 15,30.25)
#add_game(db, "Pandemic",6,28)
#add_player(db,"Karina","Franco")
#add_player(db,"David","Cabrera")
#score_game(db,"3/16/2017",1,2)
#score_game(db,"3/11/2017",2,2,2)
#score_game(db,"3/15/2017","Settlers of Cattan", 2)
action= ""
until action=="exit"
	puts "Score saver"
	puts "SELECT AN OPTION"
	puts "1. Add scores for a game"
	puts "2. Add a new game"
	puts "3. Add a new player"
	puts "4. View saved scores."
	puts "5. View games."
	puts "6. View saved players."
	puts "7. Exit."
	action=gets.chomp.to_i

	case action
	when 1
		puts "Add scores:"
		puts "Date: mm/dd/yyyy"
		date=gets.chomp
		puts "Game played"
		game=gets.chomp
		puts "Number of players"
		players=gets.chomp.to_i
		score_game(db,date,game,players)
	when 2
		puts "Add game:"
		puts "Game name, price"
		game_info=gets.chomp.split(",")
		add_game(db,game_info[0],game_info[1])
	when 3
		puts "Add player: "
		puts "First name and Last name"
		player_info=gets.chomp.split(" ")
		add_player(db, player_info[0], player_info[1])
	when 4
		view_scores(db)
	when 5
		view_games(db)
	when 6
		view_players(db)
	when 7 
		action="exit"
	else
		puts "That is not a valid option."
	end
end



