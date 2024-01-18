#!/bin/bash
#
# github-cli
#
OWNER=triopium
REPO="github_workflows"
WORKFLOW_NAME="delete_workflows"
TOKEN=$(cat ./github_token)

GetWorkflowIDS(){
# Replace <owner>, <repo>, and <workflow_name> with your repository information
# curl -s -H "Authorization: token ${TOKEN}" \
     # "https://api.github.com/repos/${OWNER}/${REPO}/actions/workflows/${WORKFLOW_NAME}/runs" \
     # | jq '.workflow_runs[].id'
# curl -s -H "Authorization: token ${TOKEN}" \
     # "https://api.github.com/repos/${OWNER}/${REPO}/actions/jobs"
 curl -L \
  -X GET \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${TOKEN}" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/${OWNER}/repos

}

"$@"

