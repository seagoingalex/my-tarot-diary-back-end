class ReadingsController < ApplicationController

    def index
        readings = Reading.all
        render json: readings
    end

    def show
        reading = Reading.find(params[:id])
        render json: reading
    end

    private

    def reading_params
        params.permit(
            :read_requester_id, 
            :read_requester_type,
            :reader_id,
            :reader_type,
            :drawing_type,
            :question,
            :rating,
            :descriptors,
            :notes
        )
    end

end
