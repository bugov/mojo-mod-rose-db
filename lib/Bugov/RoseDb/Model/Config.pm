package Bugov::RoseDb::Model::Config;
use base 'Rose::DB';

__PACKAGE__->use_private_registry;
__PACKAGE__->default_connect_options(mysql_enable_utf8 => 1);
__PACKAGE__->register_db ($::app->module->get('Bugov::RoseDb')->config->{database});

1;