class CardsController < ApplicationController

    def index
        cards = Card.all
        render json: cards
    end

    def show
        card = Card.find(params[:id])
        render json: card
    end

    private

    def card_params
        params.permit(
            :img,
            :img_reversed,
            :suit,
            :suit_thumbnail,
            :type,
            :name,
            :value,
            :value_int,
            :meaning_up,
            :meaning_rev,
            :desc_up,
            :desc_rev
        )
    end

end
