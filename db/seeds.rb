# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Car.destroy_all
User.destroy_all



users.cars_attributes = [
 { 
 		email: "toto@gmail.com",
 		password: "12345",

 },

 {
 		email: "tata@gmail.com",
 		password: "34567,"

 }

 {
 		email: "titi@gmail.com",
 		password: "45678,"

 }

]


cars_attributes = [
  {
    model:         "clio",
    brand:      "Renault",
    description:  "tres bien",
    price:        30,
    address: 			"Paris",
    engin:  			"essence",
    year: 				2002,
    km:   				150 000,
    user_id: 							,
  },
  {
    model:         "supra",
    brand:      "toyota",
    description:  "bonne etat ",
    price:        45,
    address: 			"lyon",
    engin:  			"essence",
    year: 				2007,
    km:   				110 000,
    user_id: 							,
  },
  {
    model:         "prius",
    brand:      "toyota",
    description:  "neuve",
    price:        70,
    address: 			"Paris",
    engin:  			"diesel",
    year: 				2013,
    km:   				20 000,
    user_id: 							,
  }

]
cars_attributes.each { |params| CAR.create!(params) }