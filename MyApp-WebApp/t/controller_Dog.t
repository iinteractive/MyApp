use strict;
use warnings;
use Test::More;


use Catalyst::Test 'MyApp::WebApp';
use MyApp::WebApp::Controller::Dog;

ok( request('/dog')->is_success, 'Request should succeed' );

is( get('/dog/talk'), 'woof', 'talk' );

done_testing();



