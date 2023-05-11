#!/bin/bash

curl --request GET \
	--url https://api.spotify.com/v1/me/playlists \
	--header 'Authorization: Bearer %token' |
	jq '.items | to_entries' | jq .[] | jq '[.value.name, .value.id, .key] | @csv' | fzf
