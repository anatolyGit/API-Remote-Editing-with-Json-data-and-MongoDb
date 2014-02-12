class SetupPageController < ApplicationController
require 'open-uri'
require 'json'


	def index
		@processes = JSON.parse(open("http://192.168.3.6:3003/processes").read)
		@atns = JSON.parse(open("http://192.168.3.6:3003/atns").read)
		@models = JSON.parse(open("http://192.168.3.6:3003/models").read)

		respond_to do |format|
		    format.html { render :template => "setup_page/index" }
		end
	end

	private

	def getModelName(str)
		
	end
end
