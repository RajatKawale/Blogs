# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Blogs', type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end
  describe 'GET /blogs/:blog_id/delete' do
    it 'delete blog based on blog id' do
      expect(response).to be_nil
    end
  end

  describe 'POST /blogs' do
    it 'create a new blog' do
      expect(response).to be_nil
    end
  end
end
