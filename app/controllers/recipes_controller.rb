class RecipesController < ApplicationController
  def index
  	if !params[:search].nil?
  	else
  		params[:search] = ""
  	end
  	@recipes = Recipe.for(params[:search])
  end
end

#  class RecipesController < ApplicationController
#   def index
#     @search_term = params[:search] || "chocolate"
#     @recipes_found = Recipe.for(@search_term)
#   end
# end