class FretHeatmapApp.Views.Fretboard extends Backbone.View
  tagName: 'div'
  className: 'fretboard'
  render: =>
    board = @collection.at(20)
    $(board.attributes.probability).each (string_index) ->
      console.log board.attributes.artist_name
      for fret_number in [0..24]
        $('.fret-' + fret_number + ' .string-' + string_index + ' .dot').css({opacity: @[fret_number] * 20})
