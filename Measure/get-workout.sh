# 開始日時
START_DATE_YMD="2023-12-01"

# 終了日時
END_DATE_YMD="2023-12-07"

# アクセストークン
ACCESS_TOKEN=""

curl -X POST 'https://wbsapi.withings.net/v2/measure' \
     --header "Authorization: Bearer ${ACCESS_TOKEN}" \
     --data "action=getworkouts" \
     --data "startdateymd=${START_DATE_YMD}" \
     --data "enddateymd=${END_DATE_YMD}" | jq