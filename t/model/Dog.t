use Test::More;
use MyApp::Model::Dog;

my $dog = MyApp::Model::Dog->new();
is($dog->talk, 'woof', 'talk');

done_testing();


