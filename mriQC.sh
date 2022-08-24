#!/bin/bash

bids_dir=$(pwd)/../../raw
derivatives_dir=$(pwd)/../../derivatives/mriqcOutput

docker run -it --rm \
    -v $bids_dir:/data:ro \
    -v $derivatives_dir:/out \
    poldracklab/mriqc:0.16.1 /data /out \
    participant --participant-label 001 \
    --verbose-reports --no-sub 