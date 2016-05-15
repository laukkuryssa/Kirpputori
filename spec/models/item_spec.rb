require 'rails_helper'

RSpec.describe Item, type: :model do
  it "has the it set correctly" do
    item = Item.new style:"Viihde", name:"tavara", information:"hyvä esine on"
    item.style.should == "Viihde"
    item.name.should == "tavara"
    item.information.should == "hyvä esine on"
  end

  it "is not saved if validations are not passed" do
    item = Item.create style:"Viihde"
    expect(item.valid?).to be(false)
    expect(Item.count).to eq(0)
  end

  it "is saved with valid params" do
    item = Item.create style:"Viihde", name:"tavara", information:"hyvä esine on", price:"55.54352"
    expect(item.valid?).to be(true)
    expect(Item.count).to eq(1)
  end
end
