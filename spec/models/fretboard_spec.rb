require 'spec_helper'

describe Fretboard do

  it "stores notes array" do
    fret = Fretboard.new
    fret.notes = [{"0" => 3},{"0" => 3}]
    fret.save!
    fret.notes.should eq [{"0" => 3},{"0" => 3}]
  end

  it "stores the artist_name" do
    fret = Fretboard.new
    fret.artist_name = "test name"
    fret.save!
    fret.artist_name.should eq "test name"
  end

  it "stores the number_of_tabs" do
    fret = Fretboard.new
    fret.number_of_tabs = 6
    fret.save!
    fret.number_of_tabs.should eq 6
  end

end
