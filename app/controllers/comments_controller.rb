# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!

  def show
    @comments = Comment.where(blog_id: params[:blog_id])
    session[:blog_id] = params[:blog_id]
  end

  def create
    comment = Comment.new(comment: params[:comment], user_id: current_user.id, blog_id: session[:blog_id])
    if comment.save
      redirect_to "/comments/#{session[:blog_id]}"
    else
      flash[:comment_errors] = comment.errors.full_messages
      redirect_to '/errors'
    end
  end

  def delete
    comment = Comment.delete(params[:comment_id])
    redirect_to "/comments/#{session[:blog_id]}"
  end
end
