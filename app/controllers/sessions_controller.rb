class SessionsController < ApplicationController

    def create
        
        user = User.find_by(username: params[:usernameInput])
        if user&.authenticate(params[:passwordInput])
            session[:user_id] = user.id
            # session[:user_role] = user.role_type
            # session[:role_id] = user.role_id
            render json: user, status: :created
            # byebug
        else
            render json: { error: "Invalid username or password" }, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        # session.delete :user_role
        # session.delete :role_id
        head :no_content
    end

end