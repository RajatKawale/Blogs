# frozen_string_literal: true

class LikesController < ApplicationController
  # def create
  #     like = Like.new(user_id: current_user.id, blog_id: params[:blog_id])
  #     if like.save
  #         flash[:like_count] = "#{Like.where(blog_id: params[:blog_id]).count} Likes"
  #         redirect_to root_path
  #     else
  #         flash[:like_errors] = like.errors.full_messages
  #         redirect_to '/errors'
  #     end
  # end

  def create
    if Like.where(blog_id: params[:blog_id], user_id: current_user.id).count.positive?
      Like.delete_by(user_id: current_user.id, blog_id: params[:blog_id])
      redirect_to root_path
    else
      like = Like.new(user_id: current_user.id, blog_id: params[:blog_id])
      if like.save
        flash[:like_count] = "#{Like.where(blog_id: params[:blog_id]).count} Likes"
        redirect_to root_path
      else
        flash[:like_errors] = like.errors.full_messages
        redirect_to '/errors'
      end
    end
  end
end
