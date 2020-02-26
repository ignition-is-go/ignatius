module.exports = (robot) ->

  robot.hear /yo/i, (res) ->
  res.send "yo"

  robot.respond /update/i, (res) ->

    exec = require('child_process').exec

    exec 'git pull',  (error, stdout, stderr) ->
      if error
        res.send(error)
        res.send(stderr)
      else
        msg.send(stdout)
