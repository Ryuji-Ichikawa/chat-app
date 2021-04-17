class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  # ルーム名(contentカラム)が存在(presence)している場合作成(true)というバリデーションを設定
  # 空の場合(true)はDBに保存しない
  validates :content, presence: true
end
