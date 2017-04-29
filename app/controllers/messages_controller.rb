require 'twilio-ruby'

class MessagesController < ApplicationController
  # include Webhookable
  skip_before_action :verify_authenticity_token

  def index
    @messages = Message.all
  end

  def create
    puts params["From"][2..-1]
    user = User.find_by(phone_number: params["From"][2..-1])
    context = params['Body']
    message = user.messages.new(context: context.to_s)
    puts context
    message.save
    response = Twilio::TwiML::Response.new do |r|
      r.Message "this is what you sound like #{context}"
    end
    render :xml => response.to_xml
  end

end
