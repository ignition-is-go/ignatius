module.exports = (robot) ->
  robot.hear /whoami/i, (res) ->
    user = res.envelope.user.id
    robot.messageRoom user, "hi"
