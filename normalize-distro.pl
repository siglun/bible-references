#!/usr/bin/perl -w

use strict;

my $accumulated=0;
my @numbers=() ;
my %frequencies;
while(my $line = <>) {
    chomp $line;
    $line =~ m/(\d+)\s+(\d+)/;
    my $freq = $1;
    my $ref_number = $2;
    $accumulated += $freq;
    push @numbers,$ref_number;
    $frequencies{$ref_number}=$freq;
}

foreach my $num (@numbers) {
    my $freq=$frequencies{$num};
    my $rel_freq=$freq/$accumulated;
    print "$freq\t$rel_freq\t$num\n";
}

