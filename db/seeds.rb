# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed data for recipes
#  description   :string
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string
Recipe_1 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Whiskey Sour', specialDate: '4th of July', description: 'Spirit, sugar, citrus—the original big three—come together in the Whiskey Sour, whose history stretches back to the Lincoln administration. Few drinks in the cocktail canon are as quick to satisfy and endlessly mutable as the Whiskey Sour.' )
Recipe_2 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Long Island Ice Tea', specialDate: 'Dinner', description: 'On paper, the Long Island Iced Tea is one hot mess of a drink. Four different—and disparate—spirits slugging it out in a single glass, along with triple sec, lemon juice and cola? The recipe reads more like a frat house hazing than one of the world’s most popular cocktails. And yet, somehow, it works.')
Recipe_3 = Recipe.new(drinkDate: "02/11/2019", drinkLocation: 'USA', drinkName: 'Rum and Coke', specialDate: 'None', description: 'This is a description for a test drink.')
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

d1= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is very good', reviewDate: '2015-1-11 13:57:24')
d2= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like this drin', reviewDate: '2015-1-11 13:57:24')
d3= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Fantastic', reviewDate: '2015-1-11 13:57:24')
d4= DrinkComment.create!(likeStatus: 'No', comment: 'This drink is below average', reviewDate: '2015-1-11 13:57:24')
d5= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Awesome', reviewDate: '2015-1-11 13:57:24')
d6= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like it', reviewDate: '2015-1-11 13:57:24')
d7= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is much better', reviewDate: '2015-1-11 13:57:24')

Recipe_1.ingredients.append Ingredient_1
Recipe_1.ingredients.append Ingredient_2
Recipe_1.ingredients.append Ingredient_3
Recipe_1.reviews.append d1

Recipe_2.ingredients.append Ingredient_4
Recipe_2.ingredients.append Ingredient_5
Recipe_2.ingredients.append Ingredient_6
Recipe_2.ingredients.append Ingredient_7
Recipe_2.reviews.append d2

Recipe_3.ingredients.append Ingredient_8
Recipe_3.ingredients.append Ingredient_9
Recipe_3.ingredients.append Ingredient_10
Recipe_3.reviews.append d3

Recipe_1.save!
Recipe_2.save!
Recipe_3.save!
