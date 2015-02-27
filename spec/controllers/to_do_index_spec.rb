require 'rails_helper'

RSpec.describe "to_dos/index", :type => :view do
  it "shows the list of todos in order" do
    FactoryGirl.create_list(:to_do, 3)
    assign(:todos, ToDo.all)
    render
    expect(rendered).to have_selector('div.todo', :count => 3)
  end
end
