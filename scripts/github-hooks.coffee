module.exports = (robot) ->
  robot.router.post '/hook', (req, res) ->
    robot.messageRoom 'UN5H6KSG3', "Github hook triggered"
    res.status(200).send()
    res.end
