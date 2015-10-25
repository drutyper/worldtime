class LocationsController < ApplicationController
  
  def index
    @locations = Location.paginate(:page => params[:page])

  end

  def new
    @location = Location.new
  end

  def create 
    input = "#{params[:region]}, #{params[:country]}"
    coordinates = Geokit::Geocoders::GoogleGeocoder.geocode(input)
    @location = Location.create!(
      country: params[:country], 
      region: params[:region],
      country_link: Wikilink.new.build(params[:country]),
      region_link:  Wikilink.new.build(params[:region]),
      lat: coordinates.lat,
      long: coordinates.lng
      )
    redirect_to locations_path
  end

  private

end