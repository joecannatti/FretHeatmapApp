class FretHeatmapApp.Models.Fretboard extends Backbone.Model
  paramRoot: 'fretboard'
  idAttribute: '_id'


class FretHeatmapApp.Collections.FretboardsCollection extends Backbone.Collection
  model: FretHeatmapApp.Models.Fretboard
  url: '/fretboards'
  selected: 0
