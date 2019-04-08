# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient_1 = Ingredient.create!(amount:4, measurement: 'cup', ingredientName: 'Ginger Beer')
Ingredient_2 = Ingredient.create!(amount:0.67, measurement: 'cup', ingredientName: 'Lime Juice')
Ingredient_3 = Ingredient.create!(amount:1.25, measurement: 'cup', ingredientName: 'Vodka')
Ingredient_4 = Ingredient.create!(amount:2, measurement: 'ounce', ingredientName: 'Gin')
Ingredient_5 = Ingredient.create!(amount:1, measurement: 'ounce', ingredientName: 'Lemon Juice')
Ingredient_6 = Ingredient.create!(amount:1, measurement: 'ounce', ingredientName: 'Simple Syrup')
Ingredient_7 = Ingredient.create!(amount:1, measurement: 'garnish', ingredientName: 'Lemon wheel')
Ingredient_8 = Ingredient.create!(amount:2, measurement: 'garnish', ingredientName: 'Lemon wheel')


d1= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is very good', reviewDate: '1.1.2019')
d2= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like this drin', reviewDate: '2.1.2019')
d3= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Fantastic', reviewDate: '3.1.2019')
d4= DrinkComment.create!(likeStatus: 'No', comment: 'This drink is below average', reviewDate: '4.1.2019')
d5= DrinkComment.create!(likeStatus: 'Yes', comment: 'This drink is Awesome', reviewDate: '5.1.2019')
d6= DrinkComment.create!(likeStatus: 'No', comment: 'I dont like it', reviewDate: '6.1.2019')