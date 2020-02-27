module.exports = (robot) ->
  robot.respond /update/i, (res) ->
    @exec = require('child_process').exec
    @exec 'git pull',  (error, stdout, stderr) ->
      if error
        res.send(error)
        res.send(stderr)
      else
        res.send(stdout)
    robot.messageRoom "trev", "Updated!"
