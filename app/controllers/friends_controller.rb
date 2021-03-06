class FriendsController < ApplicationController

    def index
        friends = Friend.all
        render json: friends
    end

    def show
        friend = Friend.find(params[:id])
        render json: friend
    end

    def create
        reading = Friend.create!(friend_params)
        render json: reading, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def friend_params
        params.permit(:first_name, :last_name, :public_profile_id)
    end

end
