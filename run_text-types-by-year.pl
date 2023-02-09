#!/usr/bin/perl

my $saxon = "java -jar ~/saxon/saxon9he.jar";
my $xsl   = "../bible-references/text-types-by-year.xsl";

my $source = $ARGV[0];

if(open($input, "find $source -name 'txt.xml' -print |") ) {
    print "<table>\n";
    while(my $file = <$input>) {

	chomp $file;
	$file =~ m/\/(18..)\_/;
	my $year = $1;
	print `$saxon year=$year file=$file   $file $xsl` . "\n";
    }
    print "</table>\n";

}
