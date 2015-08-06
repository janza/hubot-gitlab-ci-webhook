# Description
#   A hubot script that notifies of gitlab ci build results
#
# Configuration:
#   GITLABCI_CHANNEL
#
# Author:
#   Josip Janžić

module.exports = (robot) ->

  robot.router.post "/gitlabci", (req, res) ->
    room = process.env.GITLABCI_CHANNEL or "#gitlab"

    res.send 'OK'

    data = req.body

    status = data.build_status
    id = data.build_id
    console.log status, id

    user = data.push_data.user_name
    start = new Date(data.build_started_at)
    end = new Date(data.build_finished_at)
    time = Math.round((end - start) / 1000)

    if status == 'failed'
      robot.messageRoom room, "Build ##{id} by #{user} failed in #{time} seconds."
    else
      robot.messageRoom room, "Build ##{id} by #{user} succeeded in #{time} seconds."

