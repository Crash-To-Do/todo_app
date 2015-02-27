require_relative '../spec_helper.rb'

RSpec.describe "to_dos/index", :type => :view do
  it "shows the list of todos in order" do
    FactoryGirl.create_list(:to_do, 3)
    expect(page).to have_selector('todo', :count => 3)
  end
end
