class SetupPageController < ApplicationController
require 'open-uri'
require 'json'
	def index
		@processes_url = @remote_url+"processes"
		respond_to do |format|
		    format.html { render :template => "setup_page/index" }
		end
	end
end
