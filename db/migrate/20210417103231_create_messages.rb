class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      #テキスト内容:contentカラム,チャットルームid:room_idカラム,ユーザーid:user_idカラム
      #ルームidとユーザーidは外部キー制約をつける
      t.string  :content
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
