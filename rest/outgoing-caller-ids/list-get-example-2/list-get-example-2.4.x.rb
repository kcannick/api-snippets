# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new account_sid, auth_token


# Loop over caller_ids and print out a property for each one
@client.account.outgoing_caller_ids.list({
  :phone_number => "+14158675309"}).each do |caller_id|
  puts caller_id.phone_number
end
