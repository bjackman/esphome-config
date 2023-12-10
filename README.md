# My ESPHome config

Very simple config for a bunch of ESP8285s with DHT22s attached to them.

Try this to install them (first you need to write `secrets.yaml`):

```sh
for device in bathroom bedroom tv-room living-room kitchen; do
    docker run --rm -v "${PWD}":/config it ghcr.io/esphome/esphome compile $device.yaml
    docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome upload $device.yaml
done
```