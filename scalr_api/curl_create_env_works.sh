


#  from
#  https://docs.scalr.com/en/latest/api/preview/environments.html#create-an-environment
#  That page josn examples of everything else
#



TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJ1c2VyIiwianRpIjoiYXQtdGE3ZG1pYTFxaWM0Y2E4In0.7Wuuim1PqwYU1w6UA9_W3TwijIyZVfJRjAnMOblbmgg"
curl -s -X POST HTTPS://arcules.scalr.io/api/iacp/v3/environments \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/vnd.api+json" \
      -H "Prefer: profile=preview" \
            --data "@create_env_foo.json"


exit 0
######
response when succeeded

{"data":{"attributes":{"cost-estimation-enabled":true,"created-at":"2021-01-29T06:45:02Z","name":"staging","status":"Active"},"id":"env-ta80s54hn1db3hg","links":{"self":"https://arcules.scalr.io/api/iacp/v3/environments/env-ta80s54hn1db3hg"},"relationships":{"account":{"data":{"id":"acc-sqjrmlaec46dacg","type":"accounts"}},"cloud-credentials":null,"created-by":{"data":{"id":"user-t10dlud92bptr5g","type":"users"}},"policy-groups":null},"type":"environments"},"included":null,"meta":null}
