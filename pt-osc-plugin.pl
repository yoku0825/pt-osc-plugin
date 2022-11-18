#!/usr/bin/perl

package pt_online_schema_change_plugin;

use strict;
use warnings;
use utf8;

use constant
{
  CRITICAL => 1,
  WARNING  => 2,
  NOTE     => 3,
  INFO     => 4,
  DEBUG    => 5,
};

### Default log level. To override it, use `LOG_LEVEL=9 pt-online-schema-change ...`
$ENV{PLUGIN_LOG_LEVEL} ||= NOTE;


sub new
{
  my ($class, %args)= @_;
  my $self= { %args };
  bless $self => $class;
  return $self;
}


sub init
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start init");
  _logger(DEBUG, "finish init");
}

sub before_create_new_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_create_new_table");
  _logger(DEBUG, "finish before_create_new_table");
}

sub after_create_new_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_create_new_table");
  _logger(DEBUG, "finish after_create_new_table");
}

sub before_alter_new_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_alter_new_table");
  _logger(DEBUG, "finish before_alter_new_table");
}

sub after_alter_new_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_alter_new_table");
  _logger(DEBUG, "finish after_alter_new_table");
}

sub before_create_triggers
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_create_triggers");
  _logger(DEBUG, "finish before_create_triggers");
}

sub after_create_triggers
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_create_triggers");
  _logger(DEBUG, "finish after_create_triggers");
}

sub before_copy_rows
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_copy_rows");
  _logger(DEBUG, "finish before_copy_rows");
}

sub after_copy_rows
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_copy_rows");
  _logger(DEBUG, "finish after_copy_rows");
}

sub before_swap_tables
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_swap_tables");
  _logger(DEBUG, "finish before_swap_tables");
}

sub after_swap_tables
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_swap_tables");
  _logger(DEBUG, "finish after_swap_tables end");
}

sub before_update_foreign_keys
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_update_foreign_keys");
  _logger(DEBUG, "finish before_update_foreign_keys");
}

sub after_update_foreign_keys
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_update_foreign_keys");
  _logger(DEBUG, "finish after_update_foreign_keys");
}

sub before_drop_old_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_drop_old_table");
  _logger(DEBUG, "finish before_drop_old_table");
}

sub after_drop_old_table
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start after_drop_old_table");
  _logger(DEBUG, "finish after_drop_old_table");
}

sub before_drop_triggers
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_drop_triggers");
  _logger(DEBUG, "finish before_drop_triggers");
}

sub before_exit
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start before_exit");
  _logger(DEBUG, "finish before_exit");
}

sub get_slave_lag
{
  my ($self, %args)= @_;
  _logger(DEBUG, "start get_slave_lag");
  _logger(DEBUG, "finish get_slave_lag");
}


sub _logger
{
  my ($level, $string)= @_;

  ### One-line formatting.
  chomp($string);
  $string =~ s/\n/ /g;
  $string .= " at " . (caller 2)[3] || "unknown";

  if ($ENV{PLUGIN_LOG_LEVEL} >= $level)
  {
    print $string, "\n";
  }
  return 1;
}


return 1;

