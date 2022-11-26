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

ENDPOINT_ID="6052925860116168704"
PROJECT_ID="msds434finalproject"
INPUT_DATA_FILE='{ "instances": [ { "amerindian_including_hispanic": 100000, "amerindian_pop": 100000, "asian_including_hispanic": 100000, "asian_pop": 100000, "black_including_hispanic": 100000, "black_pop": 100000, "commute_10_14_mins": 100000, "commute_15_19_mins": 100000, "commute_20_24_mins": 100000, "commute_25_29_mins": 100000, "commute_30_34_mins": 100000, "commute_35_39_mins": 100000, "commute_40_44_mins": 100000, "commute_45_59_mins": 100000, "commute_5_9_mins": 100000, "commute_60_89_mins": 100000, "commute_90_more_mins": 100000, "commuters_by_public_transportation": 100000, "dwellings_1_units_attached": 100000, "dwellings_1_units_detached": 100000, "dwellings_10_to_19_units": 100000, "dwellings_2_units": 100000, "dwellings_20_to_49_units": 100000, "dwellings_3_to_4_units": 100000, "dwellings_5_to_9_units": 100000, "dwellings_50_or_more_units": 100000, "families_with_young_children": 100000, "family_households": 100000, "father_in_labor_force_one_parent_families_with_young_children": 100000, "father_one_parent_families_with_young_children": 100000, "female_10_to_14": 100000, "female_15_to_17": 100000, "female_18_to_19": 100000, "female_20": 100000, "female_21": 100000, "female_22_to_24": 100000, "female_25_to_29": 100000, "female_30_to_34": 100000, "female_35_to_39": 100000, "female_40_to_44": 100000, "female_45_to_49": 100000, "female_5_to_9": 100000, "female_50_to_54": 100000, "female_55_to_59": 100000, "female_60_to_61": 100000, "female_62_to_64": 100000, "female_65_to_66": 100000, "female_67_to_69": 100000, "female_70_to_74": 100000, "female_75_to_79": 100000, "female_80_to_84": 100000, "female_85_and_over": 100000, "female_pop": 100000, "female_under_5": 100000, "hispanic_pop": 100000, "households": 100000, "households_retirement_income": 100000, "housing_built_1939_or_earlier": 100000, "housing_built_2000_to_2004": 100000, "housing_built_2005_or_later": 100000, "housing_units": 100000, "housing_units_renter_occupied": 100000, "income_10000_14999": 100000, "income_100000_124999": 100000, "income_125000_149999": 100000, "income_15000_19999": 100000, "income_150000_199999": 100000, "income_20000_24999": 100000, "income_25000_29999": 100000, "income_30000_34999": 100000, "income_35000_39999": 100000, "income_40000_44999": 100000, "income_45000_49999": 100000, "income_50000_59999": 100000, "income_60000_74999": 100000, "income_75000_99999": 100000, "income_less_10000": 100000, "male_10_to_14": 100000, "male_15_to_17": 100000, "male_18_to_19": 100000, "male_20": 100000, "male_21": 100000, "male_22_to_24": 100000, "male_25_to_29": 100000, "male_30_to_34": 100000, "male_35_to_39": 100000, "male_40_to_44": 100000, "male_45_to_49": 100000, "male_5_to_9": 100000, "male_50_to_54": 100000, "male_55_to_59": 100000, "male_60_61": 100000, "male_62_64": 100000, "male_65_to_66": 100000, "male_67_to_69": 100000, "male_70_to_74": 100000, "male_75_to_79": 100000, "male_80_to_84": 100000, "male_85_and_over": 100000, "male_pop": 100000, "male_under_5": 100000, "married_households": 100000, "million_dollar_housing_units": 100000, "mobile_homes": 100000, "mortgaged_housing_units": 100000, "nonfamily_households": 100000, "not_hispanic_pop": 100000, "occupied_housing_units": 100000, "one_parent_families_with_young_children": 100000, "other_race_pop": 100000, "owner_occupied_housing_units": 100000, "rent_10_to_15_percent": 100000, "rent_15_to_20_percent": 100000, "rent_20_to_25_percent": 100000, "rent_25_to_30_percent": 100000, "rent_30_to_35_percent": 100000, "rent_35_to_40_percent": 100000, "rent_40_to_50_percent": 100000, "rent_burden_not_computed": 100000, "rent_over_50_percent": 100000, "rent_under_10_percent": 100000, "total_pop": 10000000, "two_or_more_races_pop": 100000, "two_parent_families_with_young_children": 100000, "two_parents_father_in_labor_force_families_with_young_children": 100000, "two_parents_in_labor_force_families_with_young_children": 100000, "two_parents_mother_in_labor_force_families_with_young_children": 100000, "two_parents_not_in_labor_force_families_with_young_children": 100000, "vacant_housing_units": 100000, "vacant_housing_units_for_rent": 100000, "vacant_housing_units_for_sale": 100000, "white_including_hispanic": 100000, "white_pop": 100000, }, ] }'

echo "${ENDPOINT_ID} ${PROJECT_ID} ${INPUT_DATA_FILE}"

export PROJECT_ID=msds434finalproject
export ENDPOINT_ID=census_bureau_acs_endpoint

echo "${PROJECT_ID} ${ENDPOINT_ID}"

#curl \
#-X POST \
#-H "Authorization: Bearer $(gcloud auth print-access-token)" \
#-H "Content-Type: application/json" \
#https://us-west1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west1/endpoints/${ENDPOINT_ID}:predict \
#-d "@${INPUT_DATA_FILE}"

export results=$(curl \
-X GET \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
https://us-west1-aiplatform.googleapis.com/v1/projects/${PROJECT_ID}/locations/us-west1/endpoints/${ENDPOINT_ID}:explain)


echo "results= ${results}"
#echo https://us-west1-aiplatform.googleapis.com/v1/projects/msds434finalproject/locations/us-west1/endpoints/census_bureau_acs_endpoint:predict

echo $(ls)
