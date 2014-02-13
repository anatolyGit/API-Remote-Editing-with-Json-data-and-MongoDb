class SetupPageController < ApplicationController
require 'open-uri'
require 'json'


	def index
		remote_url = "http://192.168.3.6:3003"
		#remote_url = "http://54.236.251.158:3000"
		@processes = JSON.parse(open(remote_url+"/processes").read)
		@atns = JSON.parse(open(remote_url+"/atns").read)
		@models = JSON.parse(open(remote_url+"/models").read)

		respond_to do |format|
		    format.html { render :template => "setup_page/index" }
		end
	end

	private

	def getModelName(str)
		
	end
end
