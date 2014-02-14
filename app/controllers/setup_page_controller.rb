class SetupPageController < ApplicationController
require 'open-uri'
require 'json'
	def index
		@processes_url = @remote_url+"processes"
		@atns = JSON.parse(open(@remote_url+"atns").read)
		@models = JSON.parse(open(@remote_url+"models").read)

		respond_to do |format|
		    format.html { render :template => "setup_page/index" }
		end
	end
end
