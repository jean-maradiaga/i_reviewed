# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Book.destroy_all

Book.create! [
  { name: "Harry Potter and the Deathly Hallows", author: "J.K Rowling" },
  { name: "Lord of the Rings: Return of the King", author: "G.R Tolkien" },
  { name: "A Dance with Dragons", author: "G.R.R Martin" },
  { name: "Chronicles of Narnia: The Silver Chair", author: "C. Lewis" }   
]