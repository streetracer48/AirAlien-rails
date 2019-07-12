class Room < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates:home_type, presence:true
  validates:room_type, presence:true
  validates:accommodate, presence:true
  validates:bed_room, presence:true
  validates:bath_room, presence:true

def cover_photo()
  if self.photos.length > 4 #it should be >0 but I'm using >4 for some reason
    self.photos[0].image.url()
  else
    "blank.jpg"
  end
 end
end