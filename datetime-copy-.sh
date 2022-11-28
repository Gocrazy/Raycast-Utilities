#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Datetime Copy 
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

date '+%Y-%m-%d %a' | tr -d '\n' | pbcopy

