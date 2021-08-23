class ReadingsController < ApplicationController

    def index
        readings = Reading.all
        render json: readings
    end

    def show
        reading = Reading.find(params[:id])
        render json: reading
    end

    def create
        reading = Reading.create!(reading_params)
        render json: reading, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def update
        reading = Reading.find(params[:id])
        reading.update!(reading_params)
        render json: reading
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy
        reading = Reading.find(params[:id])
        reading.destroy
        head :no_content
    end

    private

    def reading_params
        params.require(:reading).permit(
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
