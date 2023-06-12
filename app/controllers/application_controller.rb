require 'clerk/authenticatable'

class ApplicationController < ActionController::API
  before_action :clerk_authorize!

  def clerk_authorize!
    raise Custom unless session['status'] == 'active'
  end

  def current_user
    @current_user ||= User.find_by(session[:user_id])
  end

  def session
    @session ||= Clerk.sessions.find(headers['ClerkSessionId']).with_indifferent_access
  end
end
