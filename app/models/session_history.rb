class SessionHistory < ApplicationRecord

  belongs_to :main_room, class_name: 'Room', foreign_key: :room_id

end
