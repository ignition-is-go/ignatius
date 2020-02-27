module.exports = (robot) ->

  robot.router.post '/hook', (req, res) ->
    robot.messageRoom "trev", req
