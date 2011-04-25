#!/usr/bin/perl

use strict;
use warnings;
use LWP::Simple;
use AnyEvent;
my $quit_program = AnyEvent->condvar;

my @plugin_files;

my $dirread = AnyEvent->timer(
	after	=> 5,
	interval => 5,
	cb       => sub {
		opendir( my $dirhandle, "plugins" );
		@plugin_files = grep {!/^[\.\#\~]/} readdir($dirhandle);
		closedir($dirhandle);
	}
  );

  my $w = AnyEvent->timer(
	after    => 0.5,
	interval => 1,
	cb       => sub {
		print "plugins: @plugin_files\n";
	}
  );
$quit_program->recv;

