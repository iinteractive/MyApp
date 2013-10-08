package MyApp::Web::Model::Music;
use base qw/Catalyst::Model::DBIC::Schema/;
__PACKAGE__->config(
    schema_class => 'MyApp::Schema::Music',
    connect_info => ['dbi:SQLite:db/music.sqlite', '', '', {AutoCommit=>1}],
);

1;


