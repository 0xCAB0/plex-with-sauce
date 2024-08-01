#!/bin/bash

detect-secrets scan --all-files \
	--disable-plugin AbsolutePathDetectorExperimental \
	--exclude-files "$SECRETS_REGEX" \
	--exclude-files '.git*' \
	--exclude-files '.env-py' > $SECRETS_OUTFILE && detect-secrets audit $SECRETS_OUTFILE
