package Bugov::RoseDb::Model::Base;
use Bugov::RoseDb::Model::Config;
use base 'Rose::DB::Object';

sub init_db { Bugov::RoseDb::Model::Config->new }

sub to_h {
  my ($self, @data) = shift;
  push @data, $_ => $self->{$_} for $self->meta->column_names;
  return {@data};
}

1;