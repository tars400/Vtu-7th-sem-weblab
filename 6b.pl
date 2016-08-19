#!/usr/bin/perl
use CGI':standard';

print header();
print start_html(-title=>"Webpage Counter",bgcolor=>"Pink",text=>"blue");
open(FILE,'<count.txt'); //input a empty text file to record counter for number of views.
$ans = <FILE>;
close(FILE);
$ans++;
open(FILE,'>count.txt');
print FILE "$ans";
print "This page has been viewed $ans time(s).";
close(FILE);
print end_html();
