#!/usr/bin/perl
print "Content-type:text/html\n\n";
use CGI;
use DBI;
$cgi = new CGI;
$name = $cgi->param("pname");
$age = $cgi->param("age");
$con=DBI->connect("DBI:mysql:test","root","root123");    /*Replace with your DB name*/
$prep=$con->prepare("insert into age_info values('$name','$age');");
$prep->execute();
print "Data successfully submitted\n";
$res=$con->prepare("select * from age_info;");
$res->execute();
print "<html><body>";
print "The contents are as follows:<br/><table border=1>";
print "<tr><th>Name</th><th>Age</th></tr>";
while(@a=$res->fetchrow_array())
{
	print "<tr><td>$a[0]</td><td>$a[1]</td></tr>";
}
print "</table></body></html>";
$res->finish();
$prep->finish();
$con->disconnect;
