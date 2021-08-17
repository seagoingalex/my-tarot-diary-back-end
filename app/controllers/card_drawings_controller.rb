class CardDrawingsController < ApplicationController

    def index
        cardDrawings = CardDrawing.all
        render json: cardDrawings
    end

    def show
        cardDrawing = CardDrawing.find(params[:id])
        render json: cardDrawing
    end

    def create
        # byebug
        cardDrawing = CardDrawing.create!(card_drawing_params)
        render json: cardDrawing, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def card_drawing_params
        params.require(:card_drawing).permit(:reading_id, :card_id)
    end

end
