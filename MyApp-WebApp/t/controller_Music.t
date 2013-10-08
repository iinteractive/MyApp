use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MyApp::WebApp';
use MyApp::WebApp::Controller::Music;

ok( request('/music')->is_success, 'Request should succeed' );
done_testing();
