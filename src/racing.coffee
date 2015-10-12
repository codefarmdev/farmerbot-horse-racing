# Description:
#   Corrida de cavalos! Yay!
#
# Configuration:
#   HUBOT_SLACK_TOKEN
#
# Commands:
#   hubot quem ganha? <corredor1> <corredor2> ... <corredorN>

Race = require('../lib/race')

module.exports = (robot) ->
  robot.respond /(quem ganha\?) (.*)/i, (msg) ->
    riders = msg.match[2].split(' ')
    race = new Race.Race("##{msg.message.room}", riders)
    Race.Start race