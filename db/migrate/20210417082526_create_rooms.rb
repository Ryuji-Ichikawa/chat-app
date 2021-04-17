class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      #ルーム名のみ保存。空はfalseを返す
      t.string :name, null: false
      t.timestamps
    end
  end
end
