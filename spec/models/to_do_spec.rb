require_relative '../spec_helper.rb'

describe ToDo do
  it "has a valid factory" do
    expect(FactoryGirl.create(:to_do)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:to_do, title: nil)).to be_invalid
  end
  # it "is invalid without a name" do
  #   FactoryGirl.build(:user, name: nil).should_not be_valid
  # end
  # it "is invalid without a password" do
  #   FactoryGirl.build(:user, password: nil).should_not be_valid
  # end
  #
end
