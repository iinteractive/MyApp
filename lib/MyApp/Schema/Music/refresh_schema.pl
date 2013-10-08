use strict;
use DBIx::Class::Schema::Loader qw( make_schema_at );

my $user     = "";
my $password = "";
my $database = "../../../../db/music.sqlite";

make_schema_at(
   "MyApp::Schema::Music",
   {
      debug              => 1,
      # components         => [ "InflateColumn::DateTime", "TimeStamp", "EncodedColumn" ],
      # naming             => 'v4',  # Grin and bear the default?
      overwrite_modifications => 1,
      dump_directory     => "../../..",
      use_namespaces     => 1,
      # default_resultset_class => '+MyApp::Schema::Music::ResultSet',
   },
   [ "dbi:SQLite:$database", $user, $password, { } ],
);


