#!/bin/bash

source env.sh

gcloud app firewall-rules create 500 --action allow --source-range 0.1.0.1 --description "Allow GAE cron" --project "$PROJECT_ID"
gcloud app firewall-rules create 510 --action allow --source-range 0.1.0.2 --description "Allow GAE tasks" --project "$PROJECT_ID"
gcloud app firewall-rules update default --action deny --project "$PROJECT_ID"
