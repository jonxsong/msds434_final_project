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

echo "Welcome to the Census Bureau Model endpoint access app, a machine learning project!"

gcloud auth application-default login

export PROJECT_ID="msds434finalproject"

export ENDPOINT_ID=census_bureau_acs_endpoint
export ENDPOINT_ID=census_bureau_acs_reduced

export ENDPOINT_num="6052925860116168704"
export ENDPOINT_num="6746480202731225088"

export MODEL_ID="7479018829620707328"
export MODEL_ID="3412268366105149440"

echo "${ENDPOINT_ID} ${ENDPOINT_num} ${PROJECT_ID} ${MODEL_ID}"

export INPUT_DATA='{
  "instances": [
    { "income_75000_99999": "10000", "households": "10000", "owner_occupied_housing_units":"10000". "occupied_housing_units":"10000", "income_60000_74999":"10000" },
    { "income_75000_99999": "15000", "households": "15000", "owner_occupied_housing_units":"15000". "occupied_housing_units":"15000", "income_60000_74999":"15000" },
  ]
}'

export INPUT_DATA_FILE_NAME=input_data_file_name.json

echo ${INPUT_DATA} > ${INPUT_DATA_FILE_NAME}

echo "${INPUT_DATA}"

curl \
-X POST \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-west1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west1/endpoints/${ENDPOINT_num}:predict \
-d "@${INPUT_DATA_FILE_NAME}"

curl \
-X POST \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-west1-aiplatform.googleapis.com/v1beta/projects/${PROJECT_ID}/locations/us-west1/models/${MODEL_ID}:predict \
-d "@${INPUT_DATA_FILE_NAME}"

#https://us-west1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west1/endpoints/${ENDPOINT_ID}:predict \

#echo "Prediction = ${results}"

curl \
-X GET \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-west2-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west2/endpoints/${ENDPOINT_ID}:explain

#echo "Explanation Results= ${results}"
#echo https://us-west1-aiplatform.googleapis.com/v1/projects/msds434finalproject/locations/us-west1/endpoints/census_bureau_acs_endpoint:predict

echo $(ls)

cat ${INPUT_DATA_FILE_NAME}
