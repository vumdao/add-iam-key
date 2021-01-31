#!/usr/bin/expect

set access_key [lindex $argv 0]
set screte_key [lindex $argv 1]

spawn aws configure

# Add access key
expect "]:"
send "$access_key\r"

# Add secrete key
expect "]:"
send "$screte_key\r"

# Default region
expect "]:"
send "\r"

# Default output format
expect "]:"
send "\r"

interact

