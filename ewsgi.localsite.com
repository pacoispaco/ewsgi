# This Apache configuration file is only meant for local tests
# Do not use in a production environment

<VirtualHost *>
    ServerName ewsgi.localsite.com
    DocumentRoot /var/www/ewsgi
    ErrorLog /var/log/apache2/ewsgi_error.log
	
    <Directory /var/www/ewsgi/>
        Options +ExecCGI
        AddHandler cgi-script .cgi
    </Directory>
    
</VirtualHost>

