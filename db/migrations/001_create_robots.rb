require 'sqlite3'

database = SQLite3::Database.new("db/robot_world_development.db")
database.execute("CREATE TABLE robots ( id INTEGER PRIMARY KEY AUTOINCREMENT,
                                        name VARCHAR(30),
                                        city VARCHAR(30),
                                        state VARCHAR(30),
                                        department VARCHAR(60)
                                        );"
                )

puts "creating robots table for development"
