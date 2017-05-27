require 'twilio-ruby'

class NotificationsController < ApplicationController
  before_action :authenticate_user!, except: [:create]

  def index
  end

  def create
    to = params['to']
    message = params['message']
    client = Twilio::REST::Client.new(
      ENV['TWILIO_SID'],
      ENV['TWILIO_TOKEN']
    )
    client.messages.create(
      to: to,
      from: '+14245431485',
      body: message
    )
  end

  private
  def notifications_params
    params.require(:notification).permit(:to, :message)
  end
end
