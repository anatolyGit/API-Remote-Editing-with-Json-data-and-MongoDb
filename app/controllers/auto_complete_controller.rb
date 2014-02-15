class AutoCompleteController < ApplicationController
  require "json"
  def index
  	@models = JSON.parse(open(@remote_url+"models").read)
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
  def processname
    @processes = JSON.parse(open(@remote_url+"processes").read)
    @processes_hash = []
    @processes.each do |b|
      if !b["process name"].nil?
        @processes_hash << { 
            :name => b["process name"] 
            
        }
      end
    end
    respond_to do |format|
      format.json { render :json => @processes_hash }
    end
  end
end
