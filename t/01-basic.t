#!perl -T

use Test::More tests => 2;

BEGIN {
	use_ok( 'Net::Plurk' );
        my $api_key = "dKkIdUCoHo7vUDPjd3zE0bRvdm5a9sQi";
        my $p = Net::Plurk->new(api_key => $api_key);
        my $r = $p->login(user => 'nobody', pass => 'nopass');
        my %error = ('error_text' => 'Invalid API key');
        eq_hash ($r, \%error);
        is ($p->api_errormsg, 'Invalid API key');
}

diag( "Testing Net::Plurk Basic Usage" );