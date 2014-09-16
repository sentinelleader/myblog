namespace :version do
	task :production => :delete do
		verbose(false) do
			RakeHelpers::msg("Building the production static version of the application")
			RakeHelpers::shell('find source/ -name .DS_Store -delete')
			RakeHelpers::shell('middleman deploy')
			Rake::Task['delete'].invoke
		end
	end
end
