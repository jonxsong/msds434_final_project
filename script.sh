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

export datum='{
  "geo_id": 361031584031, 
  "nonfamily_households": 98.0, 
  "family_households": 335.0, 
  "median_year_structure_built": 1978.0, 
  "rent_burden_not_computed": 0.0, 
  "rent_over_50_percent": 11.0, 
  "rent_40_to_50_percent": 0.0, 
  "rent_35_to_40_percent": 0.0, 
  "rent_30_to_35_percent": 0.0, 
  "rent_25_to_30_percent": 0.0, 
  "rent_20_to_25_percent": 0.0, 
  "rent_15_to_20_percent": 11.0, 
  "rent_10_to_15_percent": 0.0, 
  "rent_under_10_percent": 0.0, 
  "total_pop": 1291.0, 
  "male_pop": 700.0, 
  "female_pop": 591.0, 
  "median_age": 33.6, 
  "white_pop": 866.0, 
  "black_pop": 201.0, 
  "asian_pop": 193.0, 
  "hispanic_pop": 31.0, 
  "amerindian_pop": 0.0, 
  "other_race_pop": 0.0, 
  "two_or_more_races_pop": 0.0, 
  "not_hispanic_pop": 1260.0, 
  "commuters_by_public_transportation": 17.0, 
  "households": 433.0, 
  "median_income": 82344.0, 
  "income_per_capita": 33831.0, 
  "housing_units": 456.0, 
  "vacant_housing_units": 23.0, 
  "vacant_housing_units_for_rent": 0.0, 
  "vacant_housing_units_for_sale": 0.0, 
  "median_rent": 825.0, 
  "percent_income_spent_on_rent": 35.0, 
  "owner_occupied_housing_units": 411.0, 
  "million_dollar_housing_units": 0.0, 
  "mortgaged_housing_units": 396.0, 
  "families_with_young_children": 165.0, 
  "two_parent_families_with_young_children": 136.0, 
  "two_parents_in_labor_force_families_with_young_children": 136.0, 
  "two_parents_father_in_labor_force_families_with_young_children": 0.0, 
  "two_parents_mother_in_labor_force_families_with_young_children": 0.0, 
  "two_parents_not_in_labor_force_families_with_young_children": 0.0, 
  "one_parent_families_with_young_children": 29.0, 
  "father_one_parent_families_with_young_children": 0.0, 
  "father_in_labor_force_one_parent_families_with_young_children": 0.0, 
  "commute_10_14_mins": 28.0, 
  "commute_15_19_mins": 14.0, 
  "commute_20_24_mins": 81.0, 
  "commute_25_29_mins": 112.0, 
  "commute_30_34_mins": 81.0, 
  "commute_45_59_mins": 63.0, 
  "aggregate_travel_time_to_work": 10000, 
  "income_less_10000": 0.0, 
  "income_10000_14999": 0.0, 
  "income_15000_19999": 11.0, 
  "income_20000_24999": 11.0, 
  "income_25000_29999": 0.0, 
  "income_30000_34999": 12.0, 
  "income_35000_39999": 0.0, 
  "income_40000_44999": 27.0, 
  "income_45000_49999": 0.0, 
  "income_50000_59999": 37.0, 
  "income_60000_74999": 39.0, 
  "income_75000_99999": 171.0, 
  "income_100000_124999": 34.0, 
  "income_125000_149999": 11.0, 
  "income_150000_199999": 65.0, 
  "income_200000_or_more": 15.0, 
  "renter_occupied_housing_units_paying_cash_median_gross_rent": 950.0, 
  "owner_occupied_housing_units_lower_value_quartile": 211800.0, 
  "owner_occupied_housing_units_median_value": 269200.0, 
  "owner_occupied_housing_units_upper_value_quartile": 299800.0, 
  "married_households": 261.0, 
  "occupied_housing_units": 433.0, 
  "housing_units_renter_occupied": 22.0, 
  "dwellings_1_units_detached": 82.0, 
  "dwellings_1_units_attached": 258.0, 
  "dwellings_2_units": 0.0, 
  "dwellings_3_to_4_units": 55.0, 
  "dwellings_5_to_9_units": 27.0, 
  "dwellings_10_to_19_units": 34.0, 
  "dwellings_20_to_49_units": 0.0, 
  "dwellings_50_or_more_units": 0.0, 
  "mobile_homes": 0.0, 
  "housing_built_2005_or_later": 0.0, 
  "housing_built_2000_to_2004": 82.0, 
  "housing_built_1939_or_earlier": 0.0, 
  "male_under_5": 90.0, 
  "male_5_to_9": 75.0, 
  "male_10_to_14": 79.0, 
  "male_15_to_17": 43.0, 
  "male_18_to_19": 10.0, 
  "male_20": 0.0, 
  "male_21": 16.0, 
  "male_22_to_24": 27.0, 
  "male_25_to_29": 36.0, 
  "male_30_to_34": 111.0, 
  "male_35_to_39": 61.0, 
  "male_40_to_44": 11.0, 
  "male_45_to_49": 11.0, 
  "male_50_to_54": 50.0, 
  "male_55_to_59": 11.0, 
  "male_60_61": 8.0, 
  "male_62_64": 39.0, 
  "male_65_to_66": 0.0, 
  "male_67_to_69": 0.0, 
  "male_70_to_74": 0.0, 
  "male_75_to_79": 10.0, 
  "male_80_to_84": 12.0, 
  "male_85_and_over": 0.0, 
  "female_under_5": 46.0, 
  "female_5_to_9": 24.0, 
  "female_10_to_14": 34.0, 
  "female_15_to_17": 9.0, 
  "female_18_to_19": 40.0, 
  "female_20": 12.0, 
  "female_21": 0.0, 
  "female_22_to_24": 17.0, 
  "female_25_to_29": 0.0, 
  "female_30_to_34": 94.0, 
  "female_35_to_39": 94.0, 
  "female_40_to_44": 53.0, 
  "female_45_to_49": 14.0, 
  "female_50_to_54": 65.0, 
  "female_55_to_59": 19.0, 
  "female_60_to_61": 15.0, 
  "female_62_to_64": 0.0, 
  "female_65_to_66": 12.0, 
  "female_67_to_69": 0.0, 
  "female_70_to_74": 13.0, 
  "female_75_to_79": 9.0, 
  "female_80_to_84": 12.0, 
  "female_85_and_over": 9.0, 
  "white_including_hispanic": 897.0, 
  "black_including_hispanic": 201.0, 
  "amerindian_including_hispanic": 0.0, 
  "asian_including_hispanic": 193.0, 
  "commute_5_9_mins": 35.0, 
  "commute_35_39_mins": 0.0, 
  "commute_40_44_mins": 79.0, 
  "commute_60_89_mins": 121.0, 
  "commute_90_more_mins": 11.0, 
  "households_retirement_income": 40.0, 
  "do_date": 20062010, 
  "armed_forces": 10000, 
  "civilian_labor_force": 10000, 
  "employed_pop": 10000, 
  "unemployed_pop": 10000, 
  "not_in_labor_force": 10000, 
  "pop_16_over": 10000, 
  "pop_in_labor_force": 10000, 
  "associates_degree": 10000, 
  "bachelors_degree": 10000, 
  "high_school_diploma": 10000, 
  "less_one_year_college": 10000, 
  "masters_degree": 10000, 
  "one_year_more_college": 10000, 
  "pop_25_years_over": 10000, 
  "commute_35_44_mins": 10000, 
  "commute_60_more_mins": 10000, 
  "commute_less_10_mins": 10000, 
  "commuters_16_over": 10000"
}'

export INPUT_DATA="{
  \"instances\": [
   ${datum}, ${datum}
  ]
}"

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
