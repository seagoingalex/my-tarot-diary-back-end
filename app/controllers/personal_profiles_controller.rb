class PersonalProfilesController < ApplicationController

    def index
        personalProfiles = PersonalProfile.all
        render json: personalProfiles
    end

    def show
        personalProfile = PersonalProfile.find(params[:id])
        render json: personalProfile
    end

    private

    def personal_profile_params
        params.permit(:user_id)
    end

end
