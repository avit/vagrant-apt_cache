require 'vagrant-apt_cache/version'
require 'vagrant-apt_cache/register_shared_folder'
require 'vagrant-apt_cache/middleware'

Vagrant.actions[:start].insert_before(
  Vagrant::Action::VM::ShareFolders, Vagrant::AptCache::Middleware
)
