require! {
  backbone4000: backbone
  'js-data'
}

exports.lego = backbone.Model.extend4000 do
  after: 'logger'
  init: (callback) ->
    @env.db = new jsData.DS()
    @env.jsData = adapter = new @settings.adapter @settings.options
    @env.db.registerAdapter 'main', adapter, default: true
    @env.log 'jsdata initialized' {}, 'init','ok'

    callback()
