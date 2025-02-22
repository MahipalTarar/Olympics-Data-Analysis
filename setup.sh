#!/bin/bash

# Ensure the .streamlit directory exists
mkdir -p ~/.streamlit/

# Set a default port if not already defined
PORT=${PORT:-8501}

# Create Streamlit config file
cat <<EOF > ~/.streamlit/config.toml
[server]
port = $PORT
enableCORS = false
headless = true
EOF
