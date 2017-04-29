require 'twilio-ruby'

class MessagesController < ApplicationController
  # include Webhookable

  def index
    messages = Message.all
  end

  def create
    context = params['Body']
    message = Message.new(context: context)
    if message.save
      puts 'yay'
    else
      puts 'boo'
    end
    redirect_to :index
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end
