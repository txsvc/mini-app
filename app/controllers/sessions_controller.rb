# frozen_string_literal: true

class SessionsController < ApplicationController
  def index; end

  def create_github
    auth_hash = request.env['omniauth.auth']
    email = auth_hash.info['email']
    uid = auth_hash.uid

    session[:user_id] = uid
    session[:user_email] = email
    redirect_to dashboard_path
  end

  def logout
    session[:user_id] = nil
    session[:user_email] = nil

    redirect_to root_path
  end
end
