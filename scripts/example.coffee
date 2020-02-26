module.exports = (robot) ->

  robot.hear /yo/i, (res) ->
    res.send "yo"
