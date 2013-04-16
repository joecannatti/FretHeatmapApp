require 'spec_helper'

describe "fretboards/edit" do
  before(:each) do
    @fretboard = assign(:fretboard, stub_model(Fretboard))
  end

  it "renders the edit fretboard form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fretboard_path(@fretboard), "post" do
    end
  end
end
