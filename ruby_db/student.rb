require 'sqlite3'
require 'sequel'
database = Sequel.sqlite('database.sqlite3')
#database.run "CREATE TABLE students (s_id integer primary key autoincrement , name varchar(255))"
#database.run "DROP TABLE students4"
#database.run "INSERT INTO students VALUES(3,'Mrunal')"
#database.run "SELECT * FROM students;"
results = database.fetch "SELECT * FROM students;"
#results.to_a
puts results