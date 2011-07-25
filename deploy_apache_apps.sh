#!/bin/bash
# Description: Install script for Eiffel WSGI example applications
# Author: Paul Cohen

if [ ! -d "/etc/apache2" ]; then
    echo "You must have Apache 2 installed to deploy the EWSGI examples."
    echo "Make sure the dns name ewsgi.localhost.com is resolved to 127.0.0.1"
    echo "Your /etc/hosts file should have this line:"
    echo "127.0.0.1       ewsgi.localsite.com"
    exit 1
fi

sitefile="ewsgi.localsite.com"
sitedir="/etc/apache2/sites-available"
if [ ! -e $sitedir/$sitefile ]; then
    echo "Installing and enabling Apache site "$sitefile
    sudo cp $sitefile $sitedir
    sudo a2ensite $sitefile
    echo "Restarting Apache to pick up new site"
    sudo apache2ctl restart
fi

ewsgidir="/var/www/ewsgi"
if [ ! -d $ewsgidir ]; then
    sudo mkdir $ewsgidir
    sudo chown www-data:www-data $ewsgidir
fi

if [ -e "hello_world/EIFGENs/hello_world/F_code/hello_world" ]; then
    sudo cp "hello_world/EIFGENs/hello_world/F_code/hello_world" $ewsgidir/"hello_world.cgi"
    sudo chown www-data:www-data $ewsgidir/"hello_world.cgi"
else
    echo "File not found: hello_world/EIFGENs/hello_world/F_code/hello_world"
fi
if [ -e "hello_streaming_world/EIFGENs/hello_streaming_world/F_code/hello_world" ]; then
    sudo cp "hello_streaming_world/EIFGENs/hello_world/F_code/hello_streaming_world" $ewsgidir/"hello_streaming_world.cgi"
    sudo chown www-data:www-data $ewsgidir/"hello_streaming_world.cgi"
else
    echo "File not found: hello_streaming_world/EIFGENs/hello_streaming_world/F_code/hello_streaming_world"
fi

echo "To test applications point browser or curl/wget at one of:"
echo "1) http://ewsgi.localsite.com/hello_world.cgi"
echo "2) http://ewsgi.localsite.com/hello_streaming_world.cgi"
