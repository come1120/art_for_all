class MessagesController < ApplicationController
  
  def index
    @message = Message.new
    @messages = Message.all.includes(:user).order(created_at: :desc)
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to root_path, notice: 'メッセージが送信されました'
    else
      flash.now[:alert] = 'メッセージを入力してください。'
      render :index
    end
  end

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

end
