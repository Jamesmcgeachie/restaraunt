class UsersController < ApplicationController

	# show sign up form
	def new
		@user = User.new
	end

	# create user in database
	# cuisine types path doesn't exist here but code is for my other app 
	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to cuisine_types_path 
		else
			render :new
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end


end