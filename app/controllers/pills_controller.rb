class PillsController < ApplicationController
  def index
    # binding.pry
    if params[:search].include?"Paris"

      location = Geocoder.search(params[:search])
      @locations = [location]

      @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location[0].latitude
        marker.lng location[0].longitude
        marker.picture ({
                        "url" => ApplicationController.helpers.asset_path("marker.png"),
                        "width" => 50,
                        "height" => 50,
        })
        # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
    else

    end
    @pills = Pill.all
    @cart = current_cart
    @cart.delivery_time = Date.new
    @cart_item = CartItem.new
    if params[:pill]
      if params[:pill][:name] != ""
        @pills = Pill.where("name ILIKE ? OR category ILIKE ?", params[:pill][:name], params[:pill][:name])
        respond_to do |format|
          format.html { redirect_to pills_path }
          format.js
        end
      end
    end

    @categories = []
    @pills.each do |pill|
      if pill.category
        @categories << pill.category
      end
    @categories.uniq!
    end

  end

  private

  def current_cart
    if session[:cart_id]
      @current_cart ||= Cart.find(session[:cart_id])
    else
      @current_cart = Cart.create(delivery_location: params[:search])
      session[:cart_id] = @current_cart.id
    end
    @current_cart
  end
end
