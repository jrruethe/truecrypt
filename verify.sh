#!/bin/sh

echo '==============================================================================='

# Verify hashes
sha256sum -c hashes.sha256

# Import gpg key
gpg --import TrueCrypt-key.asc

# Verify signatures
find . -name '*.sig' -exec gpg --verify {} \;

echo '==============================================================================='
