# クライアントID
CLIENT_ID=""

# クライアントシークレット
CLIENT_SECRET=""

# リフレッシュトークン
REFRESH_TOKEN=""

curl -X POST https://wbsapi.withings.net/v2/oauth2 \
		 -d "action=requesttoken" \
		 -d "client_id=${CLIENT_ID}" \
		 -d "client_secret=${CLIENT_SECRET}" \
		 -d "grant_type=refresh_token" \
		 -d "refresh_token=Y${REFRESH_TOKEN}" | jq
