# 開始日時（UNIXタイムスタンプ）
START_DATE="1708387200"

# 終了日時
END_DATE="1676937600"

# アクセストークン
ACCESS_TOKEN=""

# カテゴリー
CATEGORY=

curl -X POST 'https://wbsapi.withings.net/measure' \
     --header "Authorization: Bearer ${ACCESS_TOKEN}" \
		 --data "action=getmeas" \
     --data "meastype=1" \
     --data "startdate=${START_DATE}" \
     --data "enddate=${END_DATE}" \
     --data "category=${CATEGORY}" | jq