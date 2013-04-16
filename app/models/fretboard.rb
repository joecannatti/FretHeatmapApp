class Fretboard
  include Mongoid::Document
  field :notes, type: Array
  field :artist_name, type: String
  field :number_of_tabs, type: Integer
end
