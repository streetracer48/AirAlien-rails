class RoomController < ApplicationController
  before_action :set_room, except:[:index, :new, :create]

  def index
  end

  def new
  end

  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
       flash[:notice] = "Romm Successfully saved!"
       redirect_to listing_room_path(@room)
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

  def update
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
