    
class ReservationsController < ApplicationController


    def create 

        room = Room.find(params[:room_id])

    end



end