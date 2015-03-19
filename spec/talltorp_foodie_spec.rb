require 'talltorp_foodie'

describe TalltorpFoodie::Foodie do
  it "broccoli is gross" do
    expect(TalltorpFoodie::Foodie.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(TalltorpFoodie::Foodie.portray("Not Broccoli")).to eql("Delicious!")
  end
end