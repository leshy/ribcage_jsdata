require! {
  backbone4000: backbone
  'js-data'
  'js-data-mongodb'
}


exports.lego = backbone.Model.extend4000 do
  after: 'logger'
  init: (callback) ->
    @env.db = new jsData.DS()
    @env.jsData = adapter = new @settings.adapter @settings.options
    @env.db.registerAdapter 'main', adapter, default: true
    @env.log "init db (#{colors.red(@settings.name)} at #{data})", {}, 'init','ok'
    
    callback undefined, data
