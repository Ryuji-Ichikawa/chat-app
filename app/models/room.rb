class Room < ApplicationRecord
  # 多対多の関係なので、中間テーブルにもユーザーテーブルにもhas_manyを行う
  has_many :room_users
  has_many :users, through: :room_users
  # ルーム名(nameカラム)が存在(presence)している場合作成(true)というバリデーションを設定
  validates :name, presence: true
end
