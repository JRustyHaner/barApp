# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#UserProfiles seeds data
User_1 = UserProfile.create!(name: 'Admin', email: 'admin@gmail.com', mobile: '7347573691', password: 'Admin@15', address: '158 Windover Road', city: 'Memphis', state: 'Tennessee', zipcode: '38111', country: 'USA', isBusiness: 'false', role: 'admin')
User_2 = UserProfile.create!(name: 'Sam', email: 'sam81@gmail.com', mobile: '7589452265', password: 'Smurfs@1581', address: '158 Windover Road', city: 'Memphis', state: 'Tennessee', zipcode: '38111', country: 'USA', isBusiness: 'true', role: 'user')
User_3 = UserProfile.create!(name: 'Dean', email: 'dean097@yahoo.com', mobile: '9013271471', password: 'Pompeii@97', address: '3547 Walker Ave', city: 'Memphis', state: 'Tennessee', zipcode: '38111', country: 'USA', isBusiness: 'true', role: 'user')


# Seed data for recipes
#  description   :string
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string
Recipe_1 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Whiskey Sour', specialDate: '4th of July', description: 'Spirit, sugar, citrus. The original big three come together in the Whiskey Sour, whose history stretches back to the Lincoln administration. Few drinks in the cocktail canon are as quick to satisfy and endlessly mutable as the Whiskey Sour.', drinkType: 'Whiskey')
Recipe_2 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Long Island Ice Tea', specialDate: 'Dinner', description: 'On paper, the Long Island Iced Tea is one hot mess of a drink. Four different and disparate spirits slugging it out in a single glass, along with triple sec, lemon juice and cola? The recipe reads more like a frat house hazing than one of the world’s most popular cocktails. And yet, somehow, it works.', drinkType: 'Ice Tea')
Recipe_3 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Rum and Coke', specialDate: 'None', description: 'This is a description for a test drink.', drinkType: 'Coke')
Recipe_4 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'BAN', drinkName: 'Salted Lassi', specialDate: 'None', description: 'Lassi is very popular drinks in Bangladesh. There are many types of lassi, sweet lassi, salted lassi, banana lassi, rose lassi, spicy lassi etc. It is a one kind of street food drinks in Bangladesh', drinkType: 'Lassi')
Ingredient_1 = Ingredient.create!(amount:4, measurement: 'cup', ingredientName: 'Ginger Beer')
Ingredient_2 = Ingredient.create!(amount:0.67, measurement: 'cup', ingredientName: 'Lime Juice')
Ingredient_3 = Ingredient.create!(amount:1.25, measurement: 'cup', ingredientName: 'Vodka')
Ingredient_4 = Ingredient.create!(amount:2, measurement: 'ounce', ingredientName: 'Gin')
Ingredient_5 = Ingredient.create!(amount:1, measurement: 'ounce', ingredientName: 'Lemon Juice')
Ingredient_6 = Ingredient.create!(amount:1, measurement: 'ounce', ingredientName: 'Simple Syrup')
Ingredient_7 = Ingredient.create!(amount:1, measurement: 'garnish', ingredientName: 'Lemon wheel')
Ingredient_8 = Ingredient.create!(amount:4, measurement: 'ounce', ingredientName: 'Rum')
Ingredient_9 = Ingredient.create!(amount:16, measurement: 'ounce', ingredientName: 'Coke')
Ingredient_10 = Ingredient.create!(amount:1, measurement: 'cup', ingredientName: 'Ice')

d1= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is very good', reviewDate: '01/11/2015')
d2= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like this drin', reviewDate: '01/11/2015')
d3= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Fantastic', reviewDate: '01/11/2015')
d4= DrinkComment.create!(likeStatus: 'No', comment: 'This drink is below average', reviewDate: '01/11/2015')
d5= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Awesome', reviewDate: '01/11/2015')
d6= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like it', reviewDate: '01/11/2015')
d7= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is much better', reviewDate: '01/11/2015')

Recipe_4.reviews.build(likeStatus: 'Yes', comment: 'This drink is much better drink. I like the falvor', reviewDate: '01/11/2015')


Recipe_1.ingredients.append Ingredient_1
Recipe_1.ingredients.append Ingredient_2
Recipe_1.ingredients.append Ingredient_3
Recipe_1.reviews.append d1
Recipe_1.reviews.append d5
Recipe_1.reviews.append d7

Recipe_2.ingredients.append Ingredient_4
Recipe_2.ingredients.append Ingredient_5
Recipe_2.ingredients.append Ingredient_6
Recipe_2.ingredients.append Ingredient_7
Recipe_2.reviews.append d2
Recipe_2.reviews.append d4
Recipe_2.reviews.append d6

Recipe_3.ingredients.append Ingredient_8
Recipe_3.ingredients.append Ingredient_9
Recipe_3.ingredients.append Ingredient_10
Recipe_3.reviews.append d3

Recipe_1.save!
Recipe_2.save!
Recipe_3.save!
Recipe_4.save!

User_2.drinks.append Recipe_1
User_3.drinks.append Recipe_2
User_3.drinks.append Recipe_3

User_2.save!
User_3.save!
