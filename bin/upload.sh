#!/bin/bash

bucket="$1"

. environment.sh

java -jar ../target/s3pt.jar \
	--endpointUrl "$APP_CONFIG_ENDPOINT_URL" \
	--accessKey "$APP_CONFIG_ACCESS_KEY" \
	--secretKey "$APP_CONFIG_SECRET_KEY" \
	--operation CREATE_KEY_FILE \
	--bucketName "${bucket}" \
	--prefix "run-001" \
	--number 1000 \
	--size 10K \
	--keepAlive

