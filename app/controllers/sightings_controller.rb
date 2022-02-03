class SightingsController < ApplicationController
  def index
    sightings = Sighting.where(date: params[:start_date]..params[:end_date])
    render json: sightings
  end

  def show
      sightings = Sighting.find(params[:id])
      render json: sightings
  end
    
  def create
    sighting = Animal.find(params[:animal_id]).sightings.create(sighting_params)
    if sighting.valid?
      render json: sighting
    else
      render json: sighting.errors, status: :unprocessable_entity
    end
  end

  def update
    sighting = Animal.find(params[:animal_id]).sightings.find(params[:id])
    sighting.update(sighting_params)
    if sighting.valid?
      render json: sighting
    else
      render json: sighting.errors
    end
  end

  def destroy
    sighting = Animal.find(params[:animal_id]).sightings.find(params[:id])
    if sighting.destroy
      render json: sighting
    else
      render json: sighting.errors
    end
  end

private
    def sighting_params
        params.require(:sighting).permit(:date, :latitude, :longitude, :animal_id)
    end
end



# class SightingsController < ApplicationController

#     def index
#         sightings = Sighting.all
#         render json:sightings
#     end

#     def show
#         sightings = Sighting.find(params[:id])
#         render json:sightings
#     end

#     def create
#         sighting = Sighting.create(sighting_params)
#         if sighting.valid?
#             render json:sighting
#         else
#             render json:sighting.errors
#         end
#     end
    
#     def update 
#         sighting = Sighting.find(params[:id])
#         sighting.update(sighting_params)
#         if sighting.valid?
#             render json:sighting
#         else
#             render json:sighting.errors
#         end
#     end
#     def destroy
#         sighting = Sighting.find(params[:id])
#         if sighting.destroy
#             render json:sighting
#         else
#             render json:sighting.errors
#         end
#     end
#     def sighting_params
#         params.require(:sighting).permit(:animal_id, :date, :time, :latitude, :longitude)
#     end
# end