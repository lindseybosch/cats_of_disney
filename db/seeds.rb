# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all


lin = User.create email:"lin@lin.com", password:"123", name:"Lindsey"
a = User.create email:"adam@adam.com", password:"123", name:"Adam"
b = User.create email:"ben@ben.com", password:"123", name:"Ben"
AL = User.create email: "andrew@andrew.com", password:"123", name:"andrew"



