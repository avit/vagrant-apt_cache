module Vagrant
  module AptCache

    class Middleware
      def initialize(app, env, options={})
        @app = app
        @env = env
        @options = options
      end

      def call(env)
        @env = env

        if is_apt_managed?
          Vagrant::AptCache::RegisterSharedFolder.new(@env[:vm]).run
        end

        @app.call(env)
      end

      private

      def guest
        @env[:vm].guest
      end

      def is_apt_managed?
        [
          Vagrant::Guest::Debian,
          Vagrant::Guest::Ubuntu
        ].any? { |deb_distro| guest.is_a? deb_distro }
      end
    end

  end
end
