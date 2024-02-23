# 開始日時（UNIXタイムスタンプ）
START_DATE="1708387200"

# 終了日時
END_DATE="1676937600"

# アクセストークン
ACCESS_TOKEN=""

curl -X POST 'https://wbsapi.withings.net/v2/measure' \
     --header "Authorization: Bearer ${ACCESS_TOKEN}" \
     --data "action=getintradayactivity" \
     --data "startdate=${START_DATE}" \
     --data "enddate=${END_DATE}" | jq