class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_to info_path, notice: t('controller_messages.message_sended')
    else
      redirect_to info_path, alert: t('controller_messages.message_fail')
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :content)
  end
end
