use strict;
use warnings;

use MyApp::WebApp;

my $app = MyApp::WebApp->apply_default_middlewares(MyApp::WebApp->psgi_app);
$app;

