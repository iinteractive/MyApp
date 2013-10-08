use utf8;
package MyApp::Schema::Music::Result::Track;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

MyApp::Schema::Music::Result::Track

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<track>

=cut

__PACKAGE__->table("track");

=head1 ACCESSORS

=head2 trackid

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 cd

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 title

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "trackid",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "cd",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "title",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</trackid>

=back

=cut

__PACKAGE__->set_primary_key("trackid");

=head1 RELATIONS

=head2 cd

Type: belongs_to

Related object: L<MyApp::Schema::Music::Result::Cd>

=cut

__PACKAGE__->belongs_to(
  "cd",
  "MyApp::Schema::Music::Result::Cd",
  { cdid => "cd" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07036 @ 2013-10-08 16:22:05
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lqBcEHYncFv7RgghGm+hIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
