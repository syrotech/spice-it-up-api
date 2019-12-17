curl "http://localhost:4741/spices/${ID}" \
  --include \
  --request PATCH \
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

echo

  # Ex: TOKEN=tokengoeshere ID=idgoeshere TEXT=textgoeshere sh curl-scripts/examples/update.sh
