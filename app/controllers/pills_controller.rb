class PillsController < ApplicationController
  def index
    @cart = current_cart
    if params[:search]
      location = Geocoder.search(params[:search])
      @locations = [location]
      @cart.delivery_location = params[:search]
      @cart.save
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    else
      if @cart.delivery_location
        location = Geocoder.search(@cart.delivery_location)
        @locations = [location]
      else
        location = Geocoder.search("Paris")
        @locations = [location]
      end
    end
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
        marker.lat location[0].latitude
        marker.lng location[0].longitude
        marker.picture ({
                        "url" => ApplicationController.helpers.asset_path("marker1.png"),
                        "width" => 50,
                        "height" => 50,
        })
    end
    @pills = Pill.all
    @cart_item = CartItem.new
    @user = User.new
    if params[:pill]
      if params[:pill][:name] != ""
        @pills = Pill.where("name ILIKE :query OR category ILIKE :query", query: "%#{params[:pill][:name]}%")
        respond_to do |format|
          format.html { redirect_to pills_path }
          format.js
        end
      end
    end

    @categories = @pills.pluck(:category).uniq

    if @cart.delivery_time.blank?
      @stuartquote = StuartApi.new.create_job_quote({
          origin: "8 Rue de Joinville, 75019",
          destination: "16 Villa Gaudelet, 75011",
          transportTypeIds: "2",
          originCompanyContact: "MaPharmacie",
          destinationContactFirstName: "Clement",
          destinationContactLastName: "Peneranda"
        })
      @cart.update(delivery_price: @stuartquote["2"]["finalAmount"])
      @duration =  @stuartquote["2"]["duration"]
      delivery_time = Time.zone.now + @duration.to_i.minutes
      @cart.update(delivery_time: delivery_time) unless @cart.delivery_time
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
