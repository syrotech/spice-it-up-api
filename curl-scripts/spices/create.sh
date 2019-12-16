curl "http://localhost:4741/spices" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "spice": {
      "name": "'"${NAME}"'",
      "origin": "'"${ORIGIN}"'",
      "culinary_use": "'"${CULINARY_USE}"'",
      "weight": "'"${WEIGHT}"'",
      "price": "'"${PRICE}"'"
    }
  }'
