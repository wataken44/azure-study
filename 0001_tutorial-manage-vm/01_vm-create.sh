#!/usr/bin/env bash

set -xe

az vm create --resource-group myResourceGroupVM --name myVM --image UbuntuLTS --generate-ssh-keys
