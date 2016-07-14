fs = Npm.require('fs')
WebApp.connectHandlers.use '/uploadedfiles', (req, res) ->
  start = Date.now()
  file = fs.createWriteStream('./output')
  file.on 'error', (error) ->
    console.log 'error'
    return
  file.on 'finish', ->
    res.writeHead(200)
    res.end()
    #end the respone
    console.log 'Finish uploading, time taken: ' + Date.now() - start
    return
  req.pipe file
  #pipe the request to the file
  return
