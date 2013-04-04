require "vagrant"

require Vagrant.source_root.join("plugins/guests/linux/guest")

module VagrantPlugins
  module GuestOpenBSD
    class Guest < VagrantPlugins::GuestLinux::Guest
      def detect?(machine)
        # TODO: OpenBSD detection
        false
      end

      def halt
        vm.communicate.sudo("shutdown -p -h now")
      end
    end
  end
end
