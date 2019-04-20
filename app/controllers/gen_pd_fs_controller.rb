class GenPdFsController < ApplicationController
    def show
        @recipe = Recipe.includes(:ingredients).find(params[:id])
        @recipe_comment=Recipe.includes(:reviews).find(params[:id])
        respond_to do |format|
            format.html
            format.pdf do
                render pdf: @recipe.drinkName,
                page_size: 'Letter',
                template: "gen_pd_fs/show.html.erb",
                layout: "pdf.html",
                orientation: "Landscape",
                zoom: 1,
                dpi: 6000
            end
        end
    end
end
