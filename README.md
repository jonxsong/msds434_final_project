MSDS434 Final Project
=====================
For a particular census block, what are predictors of a city for people that generally make high income?

This code is meant to connect to a vertex-ai regression model endpoint. It is meant to be run from within a gce cloud run project. The code was adapted from a fork of an example project published by google cloud.

# run-example-builddeploy
Code example used in the official Cloud Build documentation

https://cloud.google.com/build/docs/deploying-builds/deploy-cloud-run.

# Instructions

For instructions on running this code see [Deploying on Cloud Run]

https://cloud.google.com/cloud-build/docs/deploying-builds/deploy-cloud-run

# API Listing

Google Cloud Platform to establish a project
Google BigQuery pulling in our dataset
Google BigQuery querying to create model
Google Vertex AI to perform ML predictions and creating endpoints
Google Vertex API working with the Vertex AI endpoints to create monitoring logistics
Google Source linked with Github
Google Console Triggers activated on push to Github, buiild process will start
Google Build API activated, app is deployed to Google Cloud Run
