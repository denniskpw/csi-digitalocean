#!/bin/sh -l

echo "Creating droplet"
/app/doctl compute droplet create foobar --region nyc3 --image ubuntu-18-04-x64 --size s-1vcpu-1gb
