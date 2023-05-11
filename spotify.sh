#!/bin/bash

curl --request GET \
	--url https://api.spotify.com/v1/me/playlists \
	--header 'Authorization: Bearer BQA8kJwdLwpEgufCT5_c2140SfhZ2UNugWSiqRUZ7l9VYE9W0xZ3WSsjfT3s_CnLv2ue9oNDn5AqFhPugUsMIFjraVWGe4CClb9r5_LX0grrz_IEs1yhAfFiLfTeI3r0MHkEFYQ0_bm99JPpUvu-L2mgd6USrpn3WycuEOJw0jWtEsJKoiGnQiZcDOm_xcKjXvEX3rexC7YjFKSEUz-CCzM' |
	jq '.items | to_entries' | jq .[] | jq '[.value.name, .value.id, .key] | @csv' | fzf
