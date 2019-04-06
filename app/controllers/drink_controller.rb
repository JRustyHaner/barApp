class DrinkController < ApplicationController
    def index
        @drinks = Drink.all
    end
    def show
        @drink = Drink.find(params[:id])
        #renders 'drink/show.html.erb'
    end
    def new
        @drink = Drink.new
    end
    def create
        @drink = Drink.new(params.require(:drink).permit(:drinkName, :specialDate, :drinkLocation, :drinkDate ))
        if @drink.save
            redirect_to drink_url(@drink), notice: "Drink record was successfully created."
        else
            flash.now[:alert] = 'Error! Unable to create Drink record.'
            render :new
        end
    end
    def edit
        @drink = Drink.find(params[:id])
        #renders 'drink/edit.html.erb'
    end
    def update
        @drink = Drink.find(params[:id])
        if @drink.update(params.require(:drink).permit(:drinkName, :specialDate, :drinkLocation, :drinkDate ))
            redirect_to drink_url(@drink), notice: "Drink record was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update Drink record.'
            render :edit
        end
    end
end


#Fields
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string