package MyApp::WebApp::Controller::Music;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MyApp::WebApp::Controller::Music - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

#use Data::Dumper;
#die Dumper($c->model('Music')->schema);
#    my $cnt = $c->model('Music')->resultset('Cd');
#    $c->response->body(
#        "You have $cnt CDs"
#    );
}



=encoding utf8

=head1 AUTHOR

Jay Hannah

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
