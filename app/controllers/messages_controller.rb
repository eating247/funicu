require 'twilio-ruby'

class MessagesController < ApplicationController
  # include Webhookable
  skip_before_action :verify_authenticity_token
  def index
    messages = Message.all
  end

  def create
    context = params['Body']
    message = Message.new(context: context.to_s)
    puts context
    message.save
    response = Twilio::TwiML::Response.new do |r|
      r.Message "this is what you sound like #{context}"
    end
    render :xml => response.to_xml
    # redirect_to :index
  end

  private
  #
  # def message_params
  #   params.require(:message).permit('Body')
  # end
end
