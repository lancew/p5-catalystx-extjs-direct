package MyApp::Controller::REST;

use Moose;

BEGIN { extends 'Catalyst::Controller::REST' }
with 'CatalystX::Controller::ExtJS::Direct';

sub object : PathPart('rest/object') : ActionClass('REST') : Direct : Chained('/') : Args(1) {
}


sub object_POST {
    my ( $self, $c ) = @_;
    $self->status_ok( $c, entity => { action => 'create', }, );
}

sub object_GET {
    my ( $self, $c ) = @_;
    $self->status_ok( $c, entity => { action => 'read', }, );
}

sub object_PUT {
    my ( $self, $c ) = @_;
    $self->status_ok( $c, entity => { action => 'update', }, );
}

sub object_DELETE {
    my ( $self, $c ) = @_;
    $self->status_ok( $c, entity => { action => 'destroy', }, );
}

1;
