class FretHeatmapApp.Views.Fretboard extends Backbone.View
  tagName: 'div'
  className: 'fretboard'

  events:
    "change #fretboard_selector" : "render"

  frets: $([[],[],[],[],[],[]])

  initialize: =>
    $('#fretboard_selector').append($('<option></option>').attr("value", fretboard.attributes._id).text(fretboard.attributes.artist_name)) for fretboard in @collection.models
    for string_number in [0..5]
      for fret_number in [0..24]
        @frets[string_number][fret_number] = new FretHeatmapApp.Views.Fret(el: $('.fret-' + fret_number + ' .string-' + string_number))
        @frets[string_number][fret_number].render()

  board: =>
    @collection.get($('#fretboard_selector').val())


  max: =>
    max = 0
    $(@board().attributes.probability).each (string_number) ->
      for fret_number in [0..24]
        max = Math.max(@[fret_number], max)
    max

  render: =>
    self = @
    $(@board().attributes.probability).each (string_number) ->
      for fret_number in [0..24]
        self.frets[string_number][fret_number].probability = (@[fret_number] / self.max())
        self.frets[string_number][fret_number].render()
