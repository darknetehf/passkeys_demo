pocketid.test.com {
    reverse_proxy pocketid:1411

	log {
		output file /var/log/caddy/pocketid.log {
			roll_keep 10
			roll_keep_for 168h
		}
		format json
		level INFO
	}
}
