#!/bin/sh
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo Hello ${TARGET:=World}!

gcloud auth application-default login

{
  "instances": [
    { "feature_column_a": "value", "feature_column_b": "value", ... },
    { "feature_column_a": "value", "feature_column_b": "value", ... },
    ...
  ]
}

ENDPOINT_ID="6052925860116168704"
PROJECT_ID="msds434finalproject"
INPUT_DATA_FILE="INPUT-JSON"

export PROJECT_ID=msds434finalproject
export ENDPOINT_ID=census_bureau_acs_endpoint

curl \
-X POST \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-west1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west1/endpoints/${ENDPOINT_ID}:predict \
-d "@${INPUT_DATA_FILE}"
