# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Students.destroy_all
Unit.destroy_all






smithJ = teachername.create!(username: 'smithJ', password: 'password')

jonesA = teachername.create!(username: 'jonesA', password: 'password' )

sanchezM = teachername.create!(username: 'sanchezM', password: 'password' )

sulemanS = teachername.create!(username: 'sulemanS', password: 'password' )

vasilikiV = teachername.create!(username: 'vasilikiV', password: 'password' )


puts "#{teachername.count} users created!"


#student name 
#teacher nameage 
#grade
#unit

#smithJ students


Students.create!(teachername: smithJ, studentname: 'alex', grade: "k", unit: 'motormovement')

Students.create!(teachername: smithJ, studentname: 'sara', grade: "k", unit: 'motormovement')

Students.create!(teachername: smithJ, studentname: 'mike', grade: "k", unit: 'motormovement')

Students.create!(teachername: smithJ, studentname: 'julie', grade: "k", unit: 'motormovement')


#jones students
Students.create!(teachername: jonesA, studentname: 'bobby', grade: "k", unit: 'motormovement')

Students.create!(teachername: jonesA, studentname: 'tina', grade: "k", unit: 'motormovement')
 
Students.create!(teachername: jonesA, studentname: 'cindy', grade: "k", unit: 'motormovement')

Students.create!(teachername: jonesA, studentname: 'tim', grade: "k", unit: 'motormovement')

puts "#{Students.count} students created!"


#unit:motormovement
#studentname:
#run 
#gallop
#hop
#skip
#jump


unit.create!(studentname: alex, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: sara, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: mike, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: julie, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: bobby, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: cindy, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: tina, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )

unit.create!(studentname: tim, unit: motormovement, run: true, gallop: false, hop: false, skip: false, jump: true )


puts "#{unit.count} unit created!"