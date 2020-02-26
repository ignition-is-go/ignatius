module.exports = (robot) ->

  robot.hear /yo/i, (res) ->
  res.send "yo"

robot.respond /update/i, (res) ->

    var exec = require('child_process').exec

    exec('git pull', function (error, stdout, stderr) {
      if(error) {
        res.send(error)
        res.send(stderr)
      } else {
        msg.send(stdout)
      }
    })
