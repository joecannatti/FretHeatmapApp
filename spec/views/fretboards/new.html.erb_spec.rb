require 'spec_helper'

describe "fretboards/new" do
  before(:each) do
    assign(:fretboard, stub_model(Fretboard).as_new_record)
  end

  it "renders new fretboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fretboards_path, "post" do
    end
  end
end
