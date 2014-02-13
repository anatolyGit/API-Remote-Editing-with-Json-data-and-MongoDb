class AutoCompleteController < ApplicationController
  require "json"
  def index
  	remote_url = "http://192.168.3.6:3003"

    @models = JSON.parse(open(remote_url+"/models").read)
    
	@models_hash = []
    @models.each do |b|
        @models_hash << { 
            :name => b["modelname"], 
            :reman => b["remanModelName"]
        }
    end
   respond_to do |format|
	    format.json { render :json => @models_hash }
   end

  end
end
