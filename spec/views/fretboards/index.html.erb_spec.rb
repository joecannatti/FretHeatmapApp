require 'spec_helper'

describe "fretboards/index" do
  before(:each) do
    assign(:fretboards, [
      stub_model(Fretboard),
      stub_model(Fretboard)
    ])
  end

  it "renders a list of fretboards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
