#!/usr/bin/perl
use CGI':standard';
print "Refresh:1 \n"; 
($s,$m,$h)=localtime(time);
print "Content-type:text/html \n\n";
print start_html(-title=>"Program 7",-bgcolor=>"pink",-text=>"black");
print "The system time is $h:$m:$s", "<br>"; 
print "In words $h hours $m minutes $s seconds";

