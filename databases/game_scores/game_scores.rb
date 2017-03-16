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
db.execute(create_table_players)
db.execute(create_table_boardgames)

	
#CREATE A SCORE TABLE
	#ID, DATE, GAME NUMBER, GAME, PLAYER, SCORE


#ADD A BOARD GAME TO THE LIST IF IT IS NOT ALREADY THERE
def add_game(db,name,cost,times_played=0)
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
end

#ADD A SCORE FOR A GAME
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

add_game(db,"Settlers of Cattan", 60,20)
add_game(db,"Splendor", 30.23,15)
add_game(db, "Pandemic",28,6)

view_games(db)

add_player(db,"Karina","Franco")
add_player(db,"David","Cabrera")

view_players(db)