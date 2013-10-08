use utf8;
package MyApp::Schema::Music::Result::Artist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Music::Result::Artist

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<artist>

=cut

__PACKAGE__->table("artist");

=head1 ACCESSORS

=head2 artistid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "artistid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</artistid>

=back

=cut

__PACKAGE__->set_primary_key("artistid");

=head1 RELATIONS

=head2 cds

Type: has_many

Related object: L<MyApp::Schema::Music::Result::Cd>

=cut

__PACKAGE__->has_many(
  "cds",
  "MyApp::Schema::Music::Result::Cd",
  { "foreign.artist" => "self.artistid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-08 16:22:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:xN5Swte5mRcM0ltwPQJunA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
