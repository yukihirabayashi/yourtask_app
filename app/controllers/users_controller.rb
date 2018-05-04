class UsersController < ApplicationController
    
    def index
        @users = User.all
    end

    def new
        @user = User.new
        @request_user_id = current_user 
    end
 
    def show
        @user = User.find(params[:id])
    end
    
    def create
         @users = User.all
    end


end
