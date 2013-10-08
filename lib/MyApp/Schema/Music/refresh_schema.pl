use strict;
use DBIx::Class::Schema::Loader qw( make_schema_at );

my $user     = "";
my $password = "";
my $database = "../../../music.sqlite";

make_schema_at(
   "MyApp::Schema::Music",
   {
      debug              => 1,
      components         => [ "InflateColumn::DateTime", "TimeStamp", "EncodedColumn" ],
      use_moose          => 1,
      # naming             => 'v4',  # Grin and bear the default?
      # skip_load_external => 1,
      overwrite_modifications => 1,
      dump_directory     => "../..",
      use_namespaces     => 1,
      # default_resultset_class => '+MyApp::Schema::Music::ResultSet',
   },
   [ "dbi:SQLite:$database", $user, $password, { } ],
);


