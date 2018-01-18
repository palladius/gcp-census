#!/bin/bash

source env.sh

#Grant bigquery.dataViewer role to YOUR-PROJECT-ID@appspot.gserviceaccount.com service account at GCP organisation, folder or selected projects level.

pip install -r requirements.txt
pip install -t lib -r requirements.txt

# https://cloud.google.com/iam/docs/granting-changing-revoking-access
#gcloud projects add-iam-policy-binding "$PROJECT_ID" \
#       --member user:"$PROJECT_ID"@appspot.gserviceaccount.com --role roles/bigquery.dataViewer

#gcloud alpha organizations set-iam-policy $ORGANIZATION_ID policy.json
