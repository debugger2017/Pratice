require 'sqlite3'
require 'sequel'
database = Sequel.sqlite('database.sqlite3')
#database.run "INSERT INTO students VALUES(1,'Manish');"
results = database.fetch "SELECT * FROM students;"
results.each do |tuple|
	puts "#{tuple[:s_id]}  " + tuple[:name]
end
 