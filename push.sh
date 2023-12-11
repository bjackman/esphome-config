#!/bin/bash

set -eu

function esphome {
    docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome "$@"
}

for device in bathroom bedroom tv-room living-room kitchen; do
    esphome compile $device.yaml
    esphome upload $device.yaml
done