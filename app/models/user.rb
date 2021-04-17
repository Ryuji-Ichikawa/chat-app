class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # nameカラムに空の場合はDBに保存をしないというバリデーションを設定
  validates :name, presence: true
  # 多対多の関係なので、中間テーブルにもルームテーブルにもhas_manyを行う
  has_many :room_users
  has_many :rooms, through: :room_users
end
