require 'rails_helper'

RSpec.describe Comment, type: :model do
    it "has the it set correctly" do
    comment = Comment.new title:"Kommentti1", text:"tässäontekstiä"
    comment.title.should == "Kommentti1"
    comment.text.should == "tässäontekstiä"
  end

  it "is not saved if validations are not passed" do
    comment = Comment.create title:"", text:"tässä tekstiä"
    expect(comment.valid?).to be(false)
    expect(Comment.count).to eq(0)
  end

  it "is saved with valid params" do
    comment = Comment.create title:"nyt toimii", text:"tässä toimivan kommentin tekstiä"
    expect(comment.valid?).to be(true)
    expect(Comment.count).to eq(1)
  end
end
