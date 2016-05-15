require 'rails_helper'

RSpec.describe User, type: :model do
 it "has the username set correctly" do
    user = User.new username:"Pekka"

    user.username.should == "Pekka"
  end

  it "has the username set correctly2" do
    user = User.new username:"masa"
    user.username.should == "masa"
  end

  it "is not saved without a password" do
    user = User.create username:"matti123"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "is not saved without a correct password" do
    user = User.create username:"matti234", password:"se", password_confirmation:"se"
    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "is saved with a proper password" do
    user = User.create username:"Matti234", password:"Sa1asana", password_confirmation:"Sa1asana"
    expect(user.valid?).to be(true)
    expect(User.count).to eq(1)
  end
end
