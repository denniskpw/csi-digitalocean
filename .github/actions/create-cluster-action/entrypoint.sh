#!/bin/sh -l


# echo "Creating droplet"
# /app/doctl compute droplet create foobar --region nyc3 --image ubuntu-18-04-x64 --size s-1vcpu-1gb

NAME=test-cluster-$(hexdump -n 12 -e '3/4 "%08X" 1 "\n"' /dev/random)

echo "Creating k8s cluster: ${NAME}"
/app/doctl kubernetes cluster create ${NAME}
/app/doctl kubernetes cluster kubeconfig save ${NAME}

ls -al /github/home/.kube
