class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :remote_url
  def remote_url
   # @remote_url = 'http://localhost:3003/'
    @remote_url = "http://54.236.251.158:3000/"
  end 
end
