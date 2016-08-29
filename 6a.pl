#!/usr/bin/perl

use CGI;
$q = new CGI;
print "Content-type:text/html\n\n";
$cmd = $q->param("name");
@greet=("Hi","Hello","Bye","Good day","Greetings","Aloha");
$index=int(rand(4));
print<<check;
<html>
	<head><title>Welcome</title></head>
	<body bgcolor=blue>
		<h1>Hi, $cmd <br/> @greet[$index].</h1>
	</body>
</html>
check
