class FretHeatmapApp.Models.Fretboard extends Backbone.Model
  paramRoot: 'fretboard'


class FretHeatmapApp.Collections.FretboardsCollection extends Backbone.Collection
  model: FretHeatmapApp.Models.Fretboard
  url: '/fretboards'
