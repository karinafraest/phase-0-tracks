require 'sqlite3'
#CREATE A NEW DATABASE
db=SQLite3::Database.new("board_games.db")
#CREATE A BOARD GAME TABLE
	#ID NAME COST TIMES PLAYED
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS board_games(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    cost INTEGER,
    times_played INTEGER
  )
SQL

db.execute(create_table_cmd)
#CREATE A PLAYER TABLE
	#ID NAME, LAST NAME
#CREATE A SCORE TABLE
	#ID, DATE, GAME NUMBER, GAME, PLAYER, SCORE
#ADD A BOARD GAME TO THE LIST IF IT IS NOT ALREADY THERE
def add_game(db,name,cost,times_played)
	current_games=db.execute("SELECT name FROM board_games")
	if current_games.length==0
		db.execute("INSERT INTO board_games(name, cost, times_played) VALUES (?, ?,?)", [name, cost,times_played])
	else
		included=false
		current_games.each do |games|
			games.each do |game|
				game=game.to_s
				if games.include?(name)
					included=true
					puts "#{name} is already saved"
				end
			end
		end
		if included==false
			puts "#{name}added."
			db.execute("INSERT INTO board_games(name, cost, times_played) VALUES (?, ?,?)", [name, cost,times_played])	
		end
	end
end
#ADD A PLAYER TO THE LIST IF IT IS NOT ALREADY THERE
#ADD A SCORE FOR A GAME
#REVIEW BOARD GAME TABLE
#REVIEW PLAYER TABLE
#REVIEW SCORE TABLE


add_game(db,"Settlers of Cattan", 60,20)
add_game(db,"Splendor", 30.23,15)
add_game(db, "Pandemic",28,6)