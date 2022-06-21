# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'Get /users/signin' do
    it 'renders to signin page' do
      expect(response).to be_nil
    end
  end

  describe 'POST /validate' do
    it 'renders to home or signin page after validation' do
      expect(response).to be_nil
    end
  end

  describe 'GET /home' do
    it 'renders to home page' do
      expect(response).to be_nil
    end
  end

  describe 'GET /signup' do
    it 'render to signup page' do
      expect(response).to be_nil
    end
  end

  describe 'POST /afterSignup' do
    it 'render to signin page after signup' do
      expect(response).to be_nil
    end
  end

  describe 'GET /users/profile' do
    it 'display user profile' do
      expect(response).to be_nil
    end
  end

  describe 'GET /users/update' do
    it 'render to update information page of user' do
      expect(response).to be_nil
    end
  end

  describe 'POST /users/updatedInfo' do
    it 'rupdate users information' do
      expect(response).to be_nil
    end
  end

  describe 'GET /users/logout' do
    it 'Logout user' do
      expect(response).to be_nil
    end
  end
end
