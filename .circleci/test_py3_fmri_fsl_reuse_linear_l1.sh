#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $DIR/test_init.sh

docker run --rm=false -t -v $WORKDIR:/work -v $HOME/examples:/data/examples:ro -w /work "${DOCKER_IMAGE}:py36" /usr/bin/run_examples.sh fmri_fsl_reuse Linear /data/examples/ level1_workflow
