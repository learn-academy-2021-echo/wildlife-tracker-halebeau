class SightingsController < ApplicationController
  def index 
    sightings = sightings.all
    render json: sightings    
  end
end