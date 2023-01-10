sh

#!/bin/bash

# Set the port
PORT=5000

# switch directories
cd build/web/

# Start the server
echo 'Server starting on: http://localhost:'$PORT 
python3 -m http.server $PORT