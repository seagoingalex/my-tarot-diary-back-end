class PersonalProfilesController < ApplicationController

    # def index
    #     personalProfiles = PersonalProfile.all
    #     render json: personalProfiles
    # end

    def show
        personalProfile = PersonalProfile.find(params[:id])
        render json: personalProfile
    end

    def my_readings
        personalProfile = PersonalProfile.find(params[:id])
        readings = personalProfile.readings
        render json: readings
    end

    private

    def personal_profile_params
        params.permit(:user_id)
    end

end
