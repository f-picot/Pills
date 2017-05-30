class PillsController < ApplicationController
  def index
    if params[:search]

      location = Geocoder.search(params[:search])
      @locations = [location]

      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location[0].latitude
        marker.lng location[0].longitude
        marker.picture ({
                        "url" => ApplicationController.helpers.asset_path("pinpon.png"),
                        "width" => 100,
                        "height" => 100,
        })
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    end
    @pills = Pill.all
    @address = params[:search]
  end
end
