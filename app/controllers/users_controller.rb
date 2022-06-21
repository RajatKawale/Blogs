# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user!

  # def signin; end

  # def validate
  #   student = User.where(email: params[:email])
  #   if student.length.positive?
  #     if student.first.password == params[:password]
  #       session[:id] = student.first.id
  #       redirect_to '/home'
  #     else
  #       flash[:msg] = 'Invalid credentials try again'
  #       redirect_to '/users/signin'
  #     end
  #   else
  #     # @msg = "Invalid credentials try again"
  #     flash[:msg] = 'Invalid credentials, please try again'
  #     redirect_to '/users/signin'
  #   end
  # end

  def home; end

  # def signup; end

  # def afterSignup
  #   student = User.new(name: params[:name], email: params[:email], password: params[:password],
  #                      number: params[:number], address: params[:address])
  #   if student.save
  #     # session[:id] = user.id
  #     # session[:name] = user.name
  #     flash[:notice] = 'signed-up successful'
  #     redirect_to '/users/signin'
  #   # binding.pry
  #   else
  #     flash[:registration_errors] = student.errors.full_messages
  #     redirect_to '/errors'
  #   end
  # end

  def profile
    # @user = User.find(session[:id])
  end

  # def update; end

  # def updatedInfo
  #   user = User.find(session[:id])
  #   if user.update(name: params[:name], email: params[:email], number: params[:number], address: params[:address])
  #     redirect_to '/home'
  #   else
  #     flash[:updation_errors] = user.errors.full_messages
  #     redirect_to '/errors'
  #   end
  # end

  def errors
    render json: flash[:registration_errors]
    render json: flash[:updation_errors]
    render json: flash[:post_errors]
    render json: flash[:blog_delete_errors]
    render json: flash[:comment_errors]
    render json: flash[:like_errors]
  end

  # def logout
  #   reset_session
  #   redirect_to '/users/signin'
  # end
end
