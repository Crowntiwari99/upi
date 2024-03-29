class UsersController < ApplicationController
    def index
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            NotifierMailer.with(user: @user).welcome.deliver_now
            redirect_to root_path
        else
            render :new
        end
    end
    private
    def user_params
        params.require(:user).permit(:email, :mobile, :amount, :upi, :bank)
    end
end
