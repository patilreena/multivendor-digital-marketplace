require 'rails_helper'

RSpec.describe Message, type: :model do
  it "responds to name, email and body" do
    msg = Message.new

    expect(msg.respond_to?(:name)).to eq(true)
    expect(msg.respond_to?(:email)).to eq(true)
    expect(msg.respond_to?(:body)).to eq(true)
  end

  it "should be valid when all attributes are set" do
  	attrs = { 
      name: 'reena',
      email: 'reena@example.org',
      body: 'asdfghj'
    }

    msg = Message.new attrs
    expect(msg.valid?).to eq(true)

  end

  it "name, email and body are required by law" do
    msg = Message.new

    expect(msg.valid?).to eq(false)

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:body].to_s
  end

end