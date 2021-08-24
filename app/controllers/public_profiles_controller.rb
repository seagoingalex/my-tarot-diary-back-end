class PublicProfilesController < ApplicationController

    def index
        publicProfiles = PublicProfile.all
        render json: publicProfiles
    end

    def show
        publicProfile = PublicProfile.find(params[:id])
        render json: publicProfile
    end

    def friend_readings
        publicProfile = PublicProfile.find(params[:id])
        readings = publicProfile.readings
        render json: readings
    end

    def my_friends
        publicProfile = PublicProfile.find(params[:id])
        friends = publicProfile.friends.uniq
        render json: friends
    end

    private

    def public_profile_params
        params.permit(:user_id)
    end

end
