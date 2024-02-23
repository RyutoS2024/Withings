# クライアントID
CLIENT_ID=""

# クライアントシークレット
CLIENT_SECRET=""

# 認証コード
CODE=""

# リダイレクトURI
REDIRECT_URI="http://localhost:8080/oauth2/callback"

curl -X POST "https://wbsapi.withings.net/v2/oauth2" \
     -d "action=requesttoken" \
     -d "grant_type=authorization_code" \
     -d "client_id=${CLIENT_ID}" \
     -d "client_secret=${CLIENT_SECRET}" \
     -d "code=${CODE}" \
     -d "redirect_uri=${REDIRECT_URI}" | jq