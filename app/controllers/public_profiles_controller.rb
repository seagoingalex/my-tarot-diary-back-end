class PublicProfilesController < ApplicationController

    def index
        publicProfiles = PublicProfile.all
        render json: publicProfiles
    end

    def show
        publicProfile = PublicProfile.find(params[:id])
        render json: publicProfile
    end

    private

    def public_profile_params
        params.permit(:user_id)
    end

end
