class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  has_one_attached :image

  # ルーム名(contentカラム)が存在(presence)している場合作成(true)というバリデーションを設定
  # 空の場合(true)はDBに保存しない
  # 画像の添付がある場合は(was_attached?)テキストがなくてもtrueを返し保存する。
  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
