#!/usr/bin/perl
use CGI':standard';
print "content-type:text/html\n\n";
print "Server name :$ENV{'SERVER_NAME'}<br>";
print "Running on port :$ENV{'SERVER_PORT'}<br>";
print "Server Software :$ENV{'SERVER_SOFTWARE'}<br>";
print "Server Protocol :$ENV{'SERVER_PROTOCOL'}<br>";
print "CGI-Revision :$ENV{'GATEWAY_INTERFACE'}<br>";
exit(0);
