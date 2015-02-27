require_relative '../spec_helper.rb'

describe ToDo do
  it "has a valid factory" do
    expect(FactoryGirl.build(:to_do)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:to_do, title: nil)).to be_invalid
  end
  it "is invalid without a due_at" do
    expect(FactoryGirl.build(:to_do, due_at: nil)).to be_invalid
  end
  it "is invalid without an order number" do
    expect(FactoryGirl.build(:to_do, order: nil)).to be_invalid
  end

end
