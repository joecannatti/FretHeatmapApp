require 'spec_helper'

describe "fretboards/show" do
  before(:each) do
    @fretboard = assign(:fretboard, stub_model(Fretboard))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
