package MyApp::WebApp::Controller::Dog;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

MyApp::WebApp::Controller::Dog - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched MyApp::WebApp::Controller::Dog in Dog.');
}

=head2 talk

=cut

sub talk :Local {
    my ( $self, $c ) = @_; $c->response->body(
        $c->model('Dog')->talk
    );
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
