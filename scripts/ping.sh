#!/bin/bash
# Render backend URL
curl -s -o /dev/null "https://invoice-management-system-r5cf.onrender.com/api/"
echo "Pinged Render backend at $(date)"
