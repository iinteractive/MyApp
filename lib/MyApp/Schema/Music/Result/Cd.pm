use utf8;
package MyApp::Schema::Music::Result::Cd;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Music::Result::Cd

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<cd>

=cut

__PACKAGE__->table("cd");

=head1 ACCESSORS

=head2 cdid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 artist

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "cdid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "artist",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cdid>

=back

=cut

__PACKAGE__->set_primary_key("cdid");

=head1 RELATIONS

=head2 artist

Type: belongs_to

Related object: L<MyApp::Schema::Music::Result::Artist>

=cut

__PACKAGE__->belongs_to(
  "artist",
  "MyApp::Schema::Music::Result::Artist",
  { artistid => "artist" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 tracks

Type: has_many

Related object: L<MyApp::Schema::Music::Result::Track>

=cut

__PACKAGE__->has_many(
  "tracks",
  "MyApp::Schema::Music::Result::Track",
  { "foreign.cd" => "self.cdid" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-08 16:22:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:u/t3H5IG487B3rt/Q86VnA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
