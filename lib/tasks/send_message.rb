require 'twilio-ruby'

def send_message
  phone_number = '+1' + '4124635989'
  client = Twilio::REST::Client.new(
    ENV['TWILIO_SID'],
    ENV['TWILIO_TOKEN']
  )
  client.messages.create(
    to: phone_number,
    from: '+14245431485',
    body: 'this is a reminder!'
  )
end

# send_message(ARGV[0], ARGV[1])
send_message
