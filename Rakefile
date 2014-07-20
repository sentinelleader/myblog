require 'bundler/setup'
require 'rake'
require 'fileutils'
require 'highline/import'

# Shared Ruby functions used in rake tasks
require File.expand_path('../lib/modules/helper_functions', __FILE__)
include HelperFunctions

Dir.glob('lib/tasks/shared/*.rake').each { |r| import r }
Dir.glob('lib/tasks/*.rake').each { |r| import r }

desc 'List all available rake tasks for this application.'
task :tasks do
	verbose(false) do
		system('rake -T')
	end
end
