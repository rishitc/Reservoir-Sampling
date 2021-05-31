#!/bin/bash
dir="$PWD/.."

# A set of "" are needed hereto accomodate for inter folder names with
# spaces in them
docker container run -v "${dir}":/volume --rm -t clux/muslrust cargo build --release
