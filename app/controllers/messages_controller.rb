class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      @message.send_contact_us if @message
      flash[:success] = "Message sent! Thank you for contacting us."
      redirect_to root_url
    else
      flash[:alert] = "Message not sent, please try again."
      render "new"
    end
  end
end