#!/bin/bash

# Directory to serve files from
SERVE_DIR="/var/www/html"

# Ensure the serve directory exists
mkdir -p $SERVE_DIR

# Generate a simple HTML page that includes the top command output
generate_html() {
    echo "<html><head><title>Top Command Output</title></head><body><pre>" > $SERVE_DIR/index.html
    top -b -n 1 >> $SERVE_DIR/index.html
    echo "</pre></body></html>" >> $SERVE_DIR/index.html
}

# Refresh the top command output every 5 seconds
while true; do
    generate_html
    sleep 5
done &

# Start the web server
cd $SERVE_DIR
python3 -m http.server 80

