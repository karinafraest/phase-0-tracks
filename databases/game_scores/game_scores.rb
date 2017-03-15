require 'sqlite3'
#CREATE A NEW DATABASE
db=SQLite3::Database.new("board_games.db")
db.results_as_hash = true

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
#ADD A SCORE FOR A GAME
#REVIEW BOARD GAME TABLE
def view_games(db)
	current_games=db.execute("SELECT * FROM board_games")
	puts "Game".ljust(30)+"Cost".ljust(30)+"Times Played".rjust(30)
	current_games.each do |game|
		puts "#{game['name']}".ljust(30)+"#{game['cost']}".ljust(30)+"#{game['times_played']}" .rjust(30)
	end
end

#REVIEW PLAYER TABLE
#REVIEW SCORE TABLE

add_game(db,"Settlers of Cattan", 60,20)
add_game(db,"Splendor", 30.23,15)
add_game(db, "Pandemic",28,6)

view_games(db)