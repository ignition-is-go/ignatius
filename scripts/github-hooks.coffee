module.exports = (robot) ->

  robot.router.post '/hook', (req, res) ->
    res.send(req)
    robot.messageRoom "trev", req
