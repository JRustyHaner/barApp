# Changes from original diagram

- Rename the Drink model to Recipe in order to match sitemap.
- Combined attributes of drinkPicture and drinkRecipe models into Recipe model and removed them, because having them didn't provide any needed features and just added complexity.
- Added drinkType to Recipe to allow was searching by drink type.
- Changed name of association because similar association names were causing database errors.
- Changed all datetime to date types. 