class FriendsController < ApplicationController

    def index
        friends = Friend.all
        render json: friends
    end

    def show
        friend = Friend.find(params[:id])
        render json: friend
    end

    private

    def friend_params
        params.permit(:first_name, :last_name)
    end

end
