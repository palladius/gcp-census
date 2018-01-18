#!/bin/bash

source env.sh

# TODO: find a way to fix the EU/US somewhat: wither you have a app.yaml.template and play with SED,
#       or you specify the region via some gcloud app deploy variables.

gcloud app deploy --project "$PROJECT_ID" -v v1 app.yaml config/cron.yaml config/queue.yaml 
