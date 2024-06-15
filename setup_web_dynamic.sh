#!/bin/bash

# Create web_dynamic directory if it doesn't exist
mkdir -p web_dynamic/templates
mkdir -p web_dynamic/static

# Copy static files
cp -r web_flask/static/* web_dynamic/static/

# Copy and rename HTML template
cp web_flask/templates/100-hbnb.html web_dynamic/templates/0-hbnb.html

# Copy __init__.py
cp web_flask/__init__.py web_dynamic/__init__.py

# Copy and rename Python script
cp web_flask/100-hbnb.py web_dynamic/0-hbnb.py

# Update the route in the new 0-hbnb.py
sed -i "s@app.route('/100-hbnb/')@app.route('/0-hbnb/')@g" web_dynamic/0-hbnb.py

echo "Files have been copied and renamed successfully!"

