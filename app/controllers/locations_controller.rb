class LocationsController < ApplicationController
  def index
    @locations = Location.all 
  end

  def new
    @location = Location.new
  end

  def create 
    input = "#{params[:region]}, #{params[:country]}"
    coordinates = Geokit::Geocoders::GeonamesGeocoder.geocode(input)
    @location = Location.create!(
      country: params[:country], 
      region: params[:region],
      country_link: Wikilink.new.build(params[:country]),
      region_link:  Wikilink.new.build(params[:region]),
      lat: input[0],
      long: input[1]
      )
  end

  private

end