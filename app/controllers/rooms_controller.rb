class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    # 保存が成功したかどうかで処理を分岐しています。
    # 成功した場合はredirect_toメソッドでルートパスにリダイレクトし、
    # 失敗した場合はrenderメソッドでrooms/new.html.erbのページを表示
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    # 配列に対しての保存をするためuser_ids: []
    params.require(:room).permit(:name, user_ids: [])
  end
end
