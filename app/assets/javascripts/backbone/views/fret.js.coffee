class FretHeatmapApp.Views.Fret extends Backbone.View
  tagName: 'div'
  className: 'fret'
  probability: 0
  render: =>
    $(@el).find('.dot').animate({opacity: @probability}, 800)
