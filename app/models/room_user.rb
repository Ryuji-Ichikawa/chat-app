class RoomUser < ApplicationRecord
  # 中間テーブルのため多対１の関係が成り立つ
  belongs_to :room
  belongs_to :user
end
