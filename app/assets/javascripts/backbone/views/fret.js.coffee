class FretHeatmapApp.Views.Fret extends Backbone.View
  tagName: 'div'
  className: 'fret'
  probability: 0
  render: =>
    $(@el).find('.dot').animate({opacity: @probability * 25}, 800, ->
      console.log('ani')
    )
