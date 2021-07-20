#!/bin/bash

echo "Script Execution Started"
./common.sh
./docker_install.sh
./awx_install.sh

echo "Script Execution Completed"