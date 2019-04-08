# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Table name: drinks
#
#  id            :integer          not null, primary key
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string
#  created_at    :datetime         not null
#  updated_at    :datetime
Recipe.destroy_all

Recipe.create!([{
    
      drinkLocation: "USA",
      drinkName: "Fuzzy Navel",
      specialDate: "None",
      drinkType: "Vodka"
    },
    {
    
      drinkLocation: "USA",
      drinkName: "Fuzzy Navel",
      specialDate: "None",
      drinkType: "Vodka"
    },
    {
    
      drinkLocation: "USA",
      drinkName: "Fuzzy Navel",
      specialDate: "None",
      drinkType: "Vodka"
    },
    {
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 2",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 3",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 4",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 5",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 6",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 7",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 8",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 9",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 10",
    specialDate: "None",
    drinkType: "Vodka"
  },
  {
  
    drinkLocation: "UK",
    drinkName: "Fuzzy Navel 11",
    specialDate: "None",
    drinkType: "Scotch"
  },
  {
  
    drinkLocation: "UK",
    drinkName: "Fuzzy Navel 12",
    specialDate: "None",
    drinkType: "Scotch"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 13",
    specialDate: "None",
    drinkType: "Whiskey"
  },
  {
  
    drinkLocation: "UK",
    drinkName: "Fuzzy Navel 14",
    specialDate: "None",
    drinkType: "Gin"
  },
  {
  
    drinkLocation: "USA",
    drinkName: "Fuzzy Navel 15",
    specialDate: "None",
    drinkType: "Gin"
  }
])
    
  p "Created #{Recipe.count} recipes."

  