class ToursController < ApplicationController
  def index

  end

  def show
    @tour = TravelServices.get_tour_by_code params[:id]
    @images = Image.of_place @tour["place_id"]
  end
end
