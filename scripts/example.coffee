module.exports = (robot) ->

  robot.hear /ping/i, (res) ->
    res.send "pong"
