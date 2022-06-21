# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'GET /comments/:blog_id' do
    it 'show all comments of a specific blog' do
      expect(response).to be_nil
    end
  end

  describe 'POST /comments/new' do
    it 'post new comment' do
      expect(response).to be_nil
    end
  end

  describe 'GET /comments/:comment_id/delete' do
    it 'delete comment based on comment id' do
      expect(response).to be_nil
    end
  end
end
