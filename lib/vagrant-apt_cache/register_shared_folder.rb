module Vagrant
  module AptCache

    class RegisterSharedFolder
      def initialize(vm, options={})
        @vm = vm
        @options = options
      end

      def run
        config_vm.share_folder("v-apt-cache",
                               guest_apt_cache_dir, host_apt_cache_dir)
      end

      private

      def config_vm
        @vm.config.vm
      end

      def guest_apt_cache_dir
        "/var/cache/apt/archives"
      end

      def host_apt_cache_dir
        prefix      = File.expand_path(Vagrant::Environment::DEFAULT_HOME)
        cache_dir   = File.join(prefix, 'cache', 'apt', @vm.box.name)
        partial_dir = File.join(cache_dir, 'partial')
        FileUtils.mkdir_p(partial_dir) unless File.exists? partial_dir
        cache_dir
      end
    end

  end
end
