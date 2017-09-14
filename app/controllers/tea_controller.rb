class TeaController < ApplicationController
    def all
        allTeas = TeaItem.all
        render json: allTeas
    end

    def featured
        featuredTeas = TeaItem.where("price > 50")
        render json: featuredTeas
    end

    def get
        teaItem = TeaItem.find(params[:id])
        render json: teaItem
    end

end
