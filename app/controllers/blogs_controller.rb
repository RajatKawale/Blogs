# frozen_string_literal: true

class BlogsController < ApplicationController
  before_action :authenticate_user!

  def new; end

  def create
    blog = Blog.new(user_id: current_user.id, title: params[:title], body: params[:body])
    if blog.save
      redirect_to root_path
    else
      flash[:post_errors] = blog.errors.full_messages
      redirect_to '/errors'
    end
  end

  def show; end

  def delete
    Comment.delete_by(blog_id: params[:blog_id])
    if Blog.delete(params[:blog_id])
    else
      flash[:blog_delete_errors] = "Can't delete, please try again"
    end
    redirect_to '/home'
  end
end
