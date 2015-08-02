# hubot-gitlab-ci-webhook

A hubot script that shows gitlab ci build results

See [`src/gitlab-ci-webhook.coffee`](src/gitlab-ci-webhook.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-gitlab-ci-webhook --save`

Then add **hubot-gitlab-ci-webhook** to your `external-scripts.json`:

```json
["hubot-gitlab-ci-webhook"]
```

Add gitlab webhook url: ```http://<hubot.url>/gitlabci```
