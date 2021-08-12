class CardDrawingsController < ApplicationController

    def index
        cardDrawings = CardDrawing.all
        render json: cardDrawings
    end

    def show
        cardDrawing = CardDrawing.find(params[:id])
        render json: cardDrawing
    end

    private

    def card_drawing_params
        params.permit(:reading_id, :card_id)
    end

end
