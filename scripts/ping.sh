#!/bin/bash

# URLs to ping
FRONTEND_URL="https://invoicesystem-sandy.vercel.app/"
BACKEND_URL="https://invoice-management-system-r5cf.onrender.com/api/invoices/"

# Function to ping a URL
ping_url() {
  local URL=$1
  local RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)
  
  if [ "$RESPONSE" -eq 200 ]; then
    echo "[$(date)] Ping to $URL successful."
  else
    echo "[$(date)] Ping to $URL failed with HTTP status $RESPONSE."
  fi
}

# Ping both frontend and backend
ping_url $FRONTEND_URL
ping_url $BACKEND_URL
