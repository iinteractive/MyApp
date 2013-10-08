package MyApp::WebApp::Model::Dog;
use Moose;

extends 'Catalyst::Model::Adaptor';

__PACKAGE__->config(
   class => 'MyApp::Model::Dog'
);


1;

