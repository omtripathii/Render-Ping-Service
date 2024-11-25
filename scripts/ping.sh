#!/bin/bash
# Replace with your Render backend URL
curl -s -o /dev/null "https://invoice-management-system-r5cf.onrender.com/api/invoices"
echo "Pinged Render backend at $(date)"
