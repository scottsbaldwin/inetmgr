require 'spec'
require 'test/unit'
require 'spec_env'
require 'uuid'
require File.expand_path(File.join(File.dirname(__FILE__), "../lib/inetmgr"))

module RSpecExtensions

	def configure
		cfg = IisConfiguration.new
		yield cfg
	    #cfg.apply_changes
	end

    def generate_random_name
	    UUID.generate(:compact).to_s
    end

end

Spec::Runner.configure do |config|
  config.include RSpecExtensions
end