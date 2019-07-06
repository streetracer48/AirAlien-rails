class RoomController < ApplicationController
  before_action :set_room, except:[:index, :new, :create]
  before_action : authenticate_user!, except :show

  def index
  end

  def new
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
       flash[:notice] = "Room Successfully saved!"
       redirect_to listing_room_path(@room)
    else
       flash[:alert]= "Room can not be saved please try again"
       render :new
    end
  end

  
  def update
    if @room.update(room_params)
      flash[:notice] = "Room successfully updated"
    else
      flash[:alert] = "Room cannot be updated!"
    end
    redirect_back(fallback_location:request.referer)
  end

  def show
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end


 private

 def  set_room
  @room = Room.find(params[:id])
 end

 def room_params

   params.require(:room).permit(
     :home_type,
     :room_type,
     :accommodate,
     :bed_room,
     :bath_room,
     :listing_name,
     :summary,
     :address,
     :has_tv,
     :has_kitchen,
     :has_aircon,
     :has_heating,
     :has_wifi,
     :price,
     :active
   )

 end

  
end
