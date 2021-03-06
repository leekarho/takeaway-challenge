describe Sms do

  subject(:sms) { described_class.new }

  it 'responds to send_message' do
    expect(subject).to respond_to(:send_message)
  end

  it 'sends a confirmation text message' do
    text_message = sms.send_message
    expect(text_message.body).to include("Thank you! Your order will be delivered")
  end
end
